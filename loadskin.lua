do
    local suits = {'Hearts', 'Diamonds', 'Clubs', 'Spades'}
    local ranks = {'Ace', 'King', 'Queen', 'Jack', '10', '9', '8', '7', '6', '5', '4', '3', '2'}
    local suit_colours = {
        lc = {
            Hearts = HEX('AF2C32'),
            Diamonds = HEX('00528C'),
            Spades = HEX('3A0B6C'),
            Clubs = HEX('19823F'),
        },
        hc = {
            Hearts = HEX('D70C18'),
            Diamonds = HEX('0066FF'),
            Spades = HEX('4F0C8E'),
            Clubs = HEX('1D9F3A'),
        },
    }
    local skins = {}

    local isXPdeck = function(deck)
        return deck and deck.effect and deck.effect.center
        and deck.effect.center.key == 'b_'.. HIGH_CARD_prefix ..'_'.. XPC_deck_key
    end

    for _, suit in ipairs(suits) do
        local skin = SMODS.DeckSkin({
            key = suit,
            suit = suit,
            palettes = {
                {
                    key = 'lc',
                    ranks = ranks,
                    display_ranks = ranks,
                    atlas = HIGH_CARD_prefix ..'_XPdeckLC',
                    pos_style = 'deck',
                    colour = suit_colours.lc[suit],
                },
                {
                    key = 'hc',
                    ranks = ranks,
                    display_ranks = ranks,
                    atlas = HIGH_CARD_prefix ..'_XPdeckHC',
                    pos_style = 'deck',
                    colour = suit_colours.hc[suit],
                }
            },
        })
        skins[suit] = skin.key
    end

    local PreviewAllRanks = function()
        for _, skin in pairs(SMODS.DeckSkins) do
            if skin.palettes then
                for _, palette in ipairs(skin.palettes) do
                    palette.display_ranks = ranks
                end
            else
                skin.display_ranks = ranks
            end
        end
    end

    local backup_update_collab_cards = G.FUNCS.update_collab_cards
    G.FUNCS.update_collab_cards = function(key, suit, silent)
        PreviewAllRanks()
        return backup_update_collab_cards(key, suit, silent)
    end

    local backup_custom_deck_tab = G.UIDEF.custom_deck_tab
    G.UIDEF.custom_deck_tab = function(suit)
        PreviewAllRanks()
        local result = backup_custom_deck_tab(suit)
        if G.cdds_cards then
            G.cdds_cards.T.w = math.min(
                math.max(13 * G.CARD_W * 0.6, 4 * G.CARD_W),
                10 * G.CARD_W
            )
            G.cdds_cards.config.card_limit = 13
            G.cdds_cards.rankCount = 13
        end

        local game = G and G.GAME
        if game and isXPdeck(game.selected_back) then
            table.insert(result.nodes, {
                n = G.UIT.R,
                config = {align = 'cm', padding = 0.05},
                nodes = {{n = G.UIT.T, config = {
                    text = localize('k_clear_configures'),
                    scale = 0.5, colour = G.C.UI.TEXT_LIGHT,
                }}}
            })
        end
        return result
    end

    local MOD = SMODS.current_mod
    local config = MOD.config
    local BACKUP_KEY = 'Original'

    local get_collabs = function()
        local settings = G and G.SETTINGS
        local custom_deck = settings and settings.CUSTOM_DECK
        return custom_deck and custom_deck.Collabs
    end

    local apply_suit_colour = function(card)
        if not card or not card.base or not card.base.suit then
            return
        end
        local suit = card.base.suit
        local colour = G.C.SUITS and G.C.SUITS[suit]
        if colour then
            card.base.colour = colour
        end
    end

    local refresh_suit_colours = function()
        local collabs = get_collabs()
        if not collabs or not G.FUNCS.update_suit_colours then return end

        for _, suit in ipairs(suits) do
            G.FUNCS.update_suit_colours(suit, collabs[suit])
        end

        for _, card in pairs(G.I.CARD or {}) do
            apply_suit_colour(card)
        end
    end

    local backup_refresh_contrast_mode = G.FUNCS.refresh_contrast_mode

    if type(backup_refresh_contrast_mode) == 'function' then
        G.FUNCS.refresh_contrast_mode = function(...)
            local result = backup_refresh_contrast_mode(...)
            refresh_suit_colours()
            return result
        end
    end

    local backup_set_base = Card.set_base
    function Card:set_base(card, initial, manual_sprites)
        local result = backup_set_base(
            self, card, initial,
            manual_sprites
        )
        apply_suit_colour(self)
        return result
    end

    local effect_valid = function(back)
        return type(back) == 'table'
        and type(back.effect) == 'table'
        and type(back.effect.center) == 'table'
    end

    local backup_set_sprites = Card.set_sprites
    function Card:set_sprites(center, front)
        local game = G and G.GAME
        local backup_viewed_back = game and game.viewed_back

        if game then
            local viewed_back = game.viewed_back
            local selected_back = game.selected_back
            if not effect_valid(viewed_back) then
                if effect_valid(selected_back) then
                    game.viewed_back = nil
                else
                    game.viewed_back = {effect = {center = {}}}
                end
            end
        end

        local done, result = pcall(
            backup_set_sprites,
            self, center, front
        )
        if game then
            game.viewed_back = backup_viewed_back
        end

        if not done then error(result, 0) end

        apply_suit_colour(self)
        return result
    end

    local backup_settings = function(collabs)
        if config[BACKUP_KEY] then return end
        local backup = {}
        for _, suit in ipairs(suits) do
            local value = collabs[suit]
            backup[suit] = {
                was_nil = value == nil,
                value = value,
            }
        end
        config[BACKUP_KEY] = backup
        SMODS.save_mod_config(MOD)
    end

    local apply_custom_deck = function()
        local collabs = get_collabs()
        if not collabs then
            return false
        end

        for _, suit in ipairs(suits) do
            local key = skins[suit]
            if type(key) ~= 'string' or not SMODS.DeckSkins[key] then
                return false
            end
        end

        backup_settings(collabs)

        for _, suit in ipairs(suits) do
            collabs[suit] = skins[suit]
        end

        refresh_suit_colours()
        if G and G.save_settings then
            G:save_settings()
        end
        return true
    end

    local restore_custom_deck = function()
        local backup = config[BACKUP_KEY]
        local collabs = get_collabs()
        if type(backup) ~= 'table' or not collabs then
            return false
        end
        for _, suit in ipairs(suits) do
            local entry = backup[suit]

            if entry then
                if entry.was_nil then
                    collabs[suit] = nil
                else
                    collabs[suit] = entry.value
                end
            end
        end
        refresh_suit_colours()
        if G and G.save_settings then
            G:save_settings()
        end
        config[BACKUP_KEY] = nil
        SMODS.save_mod_config(MOD)
        return true
    end

    local backup_start_run = Game.start_run
    function Game:start_run(args, ...)
        args = args or {}
        local save = args.savetext
        if save then
            local saved_back = save.BACK
            local saved_back_key = saved_back and saved_back.key

            if not saved_back_key and saved_back then
                saved_back_key =
                saved_back.effect and saved_back.effect.center and saved_back.effect.center.key
            end

            if saved_back_key == 'b_'.. HIGH_CARD_prefix ..'_'.. XPC_deck_key then
                apply_custom_deck()
            else restore_custom_deck()
            end
        end
        return backup_start_run(self, args, ...)
    end

    local backup_apply_to_run = Back.apply_to_run
    function Back:apply_to_run(...)
        if isXPdeck(self) then apply_custom_deck()
        else restore_custom_deck()
        end
        return backup_apply_to_run(self, ...)
    end

    local backup_delete_run = Game.delete_run
    function Game:delete_run(...)
        restore_custom_deck()
        return backup_delete_run(self, ...)
    end

    local backup_main_menu = Game.main_menu
    function Game:main_menu(...)
        restore_custom_deck()
        return backup_main_menu(self, ...)
    end
end