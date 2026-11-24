local descriptions = {
    Other = {
        hidden_base = {
            name = '隐藏牌面',
            text = {'{V:1}#2#{} #1#'}
        },

        XPC = {
            name = 'X-扑克牌',
            text = {
            '出售此牌以将其{C:green}停用{}，',
            '随后向牌组中{C:attention}洗入{}一张',
            '同{C:dark_edition}版本{}、带有原{C:dark_edition}增强{}',
            '及{C:attention}蜡封{}的相应扑克牌'
            }
        },

        original = {
            name = '原始配置',
            text = {'{V:1}#1#{}、{V:2}#2#{}'}
        },

        [HIGH_CARD_prefix ..'_clone'] = {
            name = '克隆',
            text = {'回合结束时{C:red}自毁{}'}
        }
    },

    Back = {
        ['b_'.. HIGH_CARD_prefix ..'_'.. XPC_deck_key] = {
            name = 'X-扑克牌组',
            text = {
                '使用{C:attention}单张牌{}打败任一',
                '{C:attention}盲注{}以{C:green}激发{}该牌的潜能'
            }
        }
    },

    Joker = {
        ['j_'.. HIGH_CARD_prefix ..'_2s'] = {
            name = '新·新南部',
            text = {
                '抽取{C:attention}第一手牌{}后，将{C:attention}出牌{}',
                '设为{C:blue}#1#{}次；{C:attention}牌堆{}中剩余的',
                '每张牌给予{C:white,X:mult}X#2#{}倍率',
                '{C:inactive}（当前为{C:white,X:mult}X#3#{C:inactive}倍率）{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_3s'] = {
            name = '无限棒',
            text = {
                '每张打出的{C:attention}#1#{}在',
                '计分时给予{C:white,X:mult}X#2#{}倍率'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_4s'] = {
            name = '清冷长枪',
            text = {
                '若出牌包含{C:attention}#2#{}，',
                '则{C:B4883C}清冷长枪{}',
                '获得{C:white,X:mult}X#1#{}倍率',
                '{C:inactive}（当前为{C:white,X:mult}X#3#{C:inactive}倍率）{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_5s'] = {
            name = '致密重锤',
            text = {
                '计分后摧毁所有被',
                '计分的{C:attention}#1#{}，每张给予',
                '{C:B4883C}致密重锤{C:white,X:mult}X#2#{}倍率',
                '{C:inactive}（当前为{C:white,X:mult}X#3#{C:inactive}倍率）{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_6s'] = {
            name = '杂耍火铳',
            text = {
                '每摧毁一张{C:attention}#2#{}，',
                '{C:B4883C}杂耍火铳{}',
                '获得{C:white,X:mult}X#1#{}倍率',
                '{C:inactive}（当前为{C:white,X:mult}X#3#{C:inactive}倍率）{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_7s'] = {
            name = '拦截者',
            text = {
                '将每回合{C:attention}第一手{}打出的',
                '{C:attention}牌型{}等级提升{C:attention}#1#{}级，',
                '且有{C:green}#2#/#3#{}概率为提升{C:attention}#4#{}级'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_8s'] = {
            name = '爆轰',
            text = {
                '每张打出的{C:attention}#1#{}在',
                '计分时给予{C:white,X:mult}X#2#{}倍率，',
                '计分后将其摧毁'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_9s'] = {
            name = '墨家',
            text = {
                '若最终{C:blue}筹码{}分数达到所需',
                '的{C:attention}#1#%{}，则免于{C:red}失败{}；',
                '面对{C:attention}Boss盲注{}时，有{C:green}#2#/#3#{}',
                '概率使其限制条件消失'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_Ts'] = {
            name = '诚意之弓',
            text = {
                '若出牌包含{C:attention}#2#{}，',
                '则{C:B4883C}诚意之弓{}',
                '获得{C:white,X:mult}X#1#{}倍率',
                '{C:inactive}（当前为{C:white,X:mult}X#3#{C:inactive}倍率）{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_Js'] = {
            name = '方舟之械',
            text = {
                '所有打出的{C:attention}#1#{}',
                '和{C:attention}#2#{}在计分时',
                '给予{C:white,X:mult}X#3#{}倍率'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_Qs'] = {
            name = '美杜莎之鞭',
            text = {
                '每回合{C:attention}第一次{}出牌中',
                '所有计分牌额外触发',
                '{C:attention}#1#{}次，计分后将其',
                '转化为{C:attention}#2#{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_Ks'] = {
            name = '圣徒骑士',
            text = {
                '所有打出的{C:attention}#1#{}在',
                '计分时转化为{C:attention}#2#{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_As'] = {
            name = '爱与和平',
            text = {
                '{C:attention}完整牌组{}中的每张{C:attention}#1#{}给予',
                '{C:white,X:mult}X#2#{}倍率；每回合{C:attention}第一次{}',
                '出牌前，迫使{C:attention}1{}张牌被选中，',
                '若该牌为计分牌则将其摧毁',
                '{C:inactive}（当前为{C:white,X:mult}X#3#{C:inactive}倍率）{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_2h'] = {
            name = '软体蠕虫',
            text = {
                '每拥有{C:money}$#1#{}，',
                '手牌上限{C:attention}+1{}，',
                '至多{C:attention}+#2#{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_3h'] = {
            name = '坚如磐石',
            text = {
                '每次出牌中{C:attention}第一张{}',
                '计分牌变为{C:attention}#1#{}；',
                '计分时每张{C:attention}#1#{}',
                '给予{C:white,X:mult}X#2#{}倍率'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_4h'] = {
            name = '超级特工',
            text = {
                '若本回合{C:attention}第一次出牌{}',
                '只有{C:attention}1{}张牌，则向手牌',
                '中加入该牌的{C:attention}#1#{}个{C:attention}克隆{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_5h'] = {
            name = '高热量',
            text = {
                '剩余的每次{C:blue}出牌{}',
                '和{C:red}弃牌{}给予{C:white,X:mult}X#1#{}倍率',
                '{C:inactive}（下次出牌时{C:white,X:mult}X#2#{C:inactive}倍率）{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_6h'] = {
            name = '动物园',
            text = {
                '每回合{C:attention}第一次{}出牌中，',
                '每张无增强的{C:attention}计分牌{}在',
                '计分时随机获得一种{C:dark_edition}增强{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_7h'] = {
            name = '变色龙',
            text = {
                '每回合{C:attention}第一次{}出牌中的',
                '所有计分牌转化为{C:attention}#1#{}；',
                '{C:attention}完整牌组{}中的每张',
                '{C:attention}#1#{}给予{C:white,X:mult}X#2#{}倍率',
                '{C:inactive}（当前为{C:white,X:mult}X#3#{C:inactive}倍率）{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_8h'] = {
            name = '信息素',
            text = {
                '将所有计分牌的花色',
                '转变为本次出牌中',
                '{C:attention}第一张{}计分牌的花色'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_9h'] = {
            name = '卓越天才',
            text = {
                '回合结束时，{C:attention}牌堆{}',
                '中剩余的每张牌给予',
                '{C:B4883C}卓越天才{}{C:white,X:mult}X#1#{}倍率',
                '{C:inactive}（当前为{C:white,X:mult}X#2#{C:inactive}倍率）{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_Th'] = {
            name = '敏锐五感',
            text = {
                '若出牌包含{C:attention}#2#{}，',
                '则{C:B4883C}敏锐五感{}',
                '获得{C:white,X:mult}X#1#{}倍率',
                '{C:inactive}（当前为{C:white,X:mult}X#3#{C:inactive}倍率）{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_Jh'] = {
            name = '苍穹舞者',
            text = {
                '每使用一张{C:planet}星球牌{}，',
                '额外提升{C:attention}#1#{}级',
                '相应牌型的等级'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_Qh'] = {
            name = '音速行者',
            text = {
                '若只出{C:attention}1{}手牌即击败',
                '{C:attention}盲注{}，则{C:B4883C}音速行者{}',
                '获得{C:white,X:mult}X#1#{}倍率',
                '{C:inactive}（当前为{C:white,X:mult}X#2#{C:inactive}倍率）{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_Kh'] = {
            name = '完美雄性',
            text = {
                '所有打出的',
                '{C:attention}#2#{}和{C:attention}#3#{}在计分时',
                '获得{C:attention}#1#{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_Ah'] = {
            name = '千人千面',
            text = {
                '所有打出的牌在',
                '计分后变为{V:1}#2#{}{C:attention}#1#{}',
                '{s:0.8}每回合卡牌都会变动'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_2d'] = {
            name = '心有灵犀',
            text = {
                '每手计分牌中每种',
                '不同类型的蜡封给予',
                '{C:B4883C}心有灵犀{C:white,X:mult}X#1#{}倍率',
                '{C:inactive}（当前为{C:white,X:mult}X#2#{C:inactive}倍率）{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_3d'] = {
            name = '滚滚弹珠',
            text = {
                '本回合{C:attention}第一次{}出牌',
                '中的所有计分牌',
                '转化为{C:attention}#1#{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_4d'] = {
            name = '时间哑剧',
            text = {
                '打出的{C:attention}第一手牌{}中所有',
                '计分牌额外触发{C:attention}#1#{}次，',
                '计分后将其摧毁'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_5d'] = {
            name = '最强人类',
            text = {
                '所有打出的{C:attention}#1#{}',
                '和{C:attention}#2#{}在计分后',
                '提高{C:attention}#3#{}级点数'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_6d'] = {
            name = '13级阶梯',
            text = {
                '每打出{C:attention}13{}{C:inactive}(#2#){}张牌，',
                '{C:B4883C}13级阶梯{}获得{C:white,X:mult}X#1#{}倍率，',
                '且摧毁每第{C:attention}13{}张打出的牌',
                '{C:inactive}（当前为{C:white,X:mult}X#3#{C:inactive}倍率）{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_7d'] = {
            name = '等价交换',
            text = {
                '每花费或失去{C:money}$1{}，',
                '{C:B4883C}等价交换{}获得',
                '{C:white,X:mult}X#1#{}倍率',
                '{C:inactive}（当前为{C:white,X:mult}X#2#{C:inactive}倍率）{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_8d'] = {
            name = '红色迷宫',
            text = {
                '每手牌计分前',
                '互换{C:blue}筹码{}和{C:mult}倍率{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_9d'] = {
            name = '无慈悲',
            text = {
                '将每回合{C:attention}第一张{}计分牌点数',
                '的{C:attention}四分之一{}给予{C:B4883C}无慈悲{}的',
                '{C:white,X:mult}X倍率{}，若该牌为{C:attention}#2#{}则',
                '给予{C:B4883C}无慈悲{C:white,X:mult}X#3#{}，计分后',
                '将其摧毁，回合结束后重置',
                '{C:inactive}（当前为{C:white,X:mult}X#1#{C:inactive}倍率）{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_Td'] = {
            name = '倒霉蛋',
            text = {
                '所有计分的{C:attention}#1#{}',
                '其两种效果必然触发，',
                '计分后将其摧毁'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_Jd'] = {
            name = '五感之外',
            text = {
                '所有打出{C:attention}5{}张牌的',
                '{C:attention}#1#{}牌型均视为{C:attention}#2#{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_Qd'] = {
            name = '邪眼魔王',
            text = {'{C:dark_edition}预见{}牌堆的','抽牌顺序'}
        },
        ['j_'.. HIGH_CARD_prefix ..'_Kd'] = {
            name = '周而复始',
            text = {
                '每手牌计分后',
                '平衡{C:blue}筹码{}和{C:mult}倍率{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_Ad'] = {
            name = '动态念力',
            text = {
                '回合内出售的{C:B4883C}X-扑克牌{}',
                '进入{C:attention}手牌{}而非洗入牌堆；',
                '每出售一张{C:B4883C}X-扑克牌{}，',
                '{C:B4883C}动态念力{}获得{C:white,X:mult}X#1#{}倍率，',
                '击败{C:attention}Boss{}盲注后重置',
                '{C:inactive}（当前为{C:white,X:mult}X#2#{C:inactive}倍率）{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_2c'] = {
            name = '刚韧金属',
            text = {
                '所有{C:attention}#1#{}和{C:attention}#2#{}',
                '在手中同时具有',
                '这两种{C:dark_edition}增强{}的效果'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_3c'] = {
            name = '青翠藤蔓',
            text = {
                '打出的每张计分牌',
                '永久获得{C:white,X:mult}X#1#{}倍率'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_4c'] = {
            name = '振翼疾风',
            text = {
                '每手牌计分后，将剩余',
                '除{C:attention}#1#{}和{C:attention}#2#{}之外',
                '所有手牌{C:attention}洗入{}牌堆'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_5c'] = {
            name = '飞扬尘土',
            text = {
                '每张打出的{C:attention}#1#{}在',
                '计分时给予{C:white,X:mult}X#2#{}倍率，',
                '计分后将其摧毁'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_6c'] = {
            name = '淡蓝波涛',
            text = {
                '每回合{C:attention}第一次{}出牌中，',
                '每张没有版本的{C:attention}计分牌{}',
                '都有{C:green}#1#/#2#{}概率获得{C:dark_edition}闪箔{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_7c'] = {
            name = '致命辣度',
            text = {
                '每张打出的{C:attention}#1#{}在',
                '计分时给予{C:white,X:mult}X#2#{}倍率，',
                '计分后将其摧毁'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_8c'] = {
            name = '沉沦暗影',
            text = {
                '每回合{C:attention}第一次{}出牌中，',
                '每张没有版本的{C:attention}计分牌{}',
                '都有{C:green}#1#/#2#{}概率获得{C:dark_edition}负片{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_9c'] = {
            name = '初升光明',
            text = {
                '每回合{C:attention}第一次{}出牌中，',
                '每张没有版本的{C:attention}计分牌{}',
                '都有{C:green}#1#/#2#{}概率获得{C:dark_edition}多彩{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_Tc'] = {
            name = '百万伏特',
            text = {
                '每回合{C:attention}第一次{}出牌中，',
                '每张没有版本的{C:attention}计分牌{}',
                '都有{C:green}#1#/#2#{}概率获得{C:dark_edition}全息{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_Jc'] = {
            name = '归来',
            text = {
                '计分结束后，将',
                '{C:attention}第一张{}计分牌',
                '抽回手牌中'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_Qc'] = {
            name = '角斗士',
            text = {
                '每张打出的{C:attention}#1#{}在',
                '计分时给予{C:white,X:mult}X#2#{}倍率，',
                '计分后将其摧毁'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_Kc'] = {
            name = '死神之手',
            text = {
                '每回合{C:attention}第一次{}出牌中所有的计分牌',
                '将在计分后被摧毁，同时{C:B4883C}死神之手{}',
                '获得这些牌相应{C:dark_edition}增强{}与{C:dark_edition}版本{}提供的',
                '{C:chips}筹码{}，{C:mult}倍率{}，{C:white,X:mult}X倍率{}，或返还相应',
                '{C:money}金钱{}，击败{C:attention}Boss盲注{}后重置其{C:white,X:mult}X倍率{}',
                '{C:inactive}（当前为{C:chips}+#1#{C:inactive}筹码，{C:mult}+#2#{C:inactive}倍率，{X:mult,C:white}X#3#{C:inactive}倍率）{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_Ac'] = {
            name = '行尸走肉',
            text = {
                '在选择{C:attention}盲注{}时摧毁',
                '{C:attention}最左侧{}的消耗牌，',
                '随后生成一张{C:spectral}幻灵牌{}',
                '{C:inactive}（必须有空间）{}'
            }
        },
        ['j_'.. HIGH_CARD_prefix ..'_0x'] = {
            name = '',
            text = {},
            unlock = {'敬请期待！'}
        },
        ['j_'.. HIGH_CARD_prefix ..'_1x'] = {
            name = '',
            text = {},
            unlock = {'敬请期待！'}
        }
    }
}

local misc = {
    labels = {
        [HIGH_CARD_prefix ..'_clone'] = '克隆',
        [(HIGH_CARD_prefix ..'_XPC'):lower()] = 'X-扑克牌'
    },
    collabs = {
        Spades = {
            [HIGH_CARD_prefix ..'_Spades'] = '黑曜石'
        },
        Hearts = {
            [HIGH_CARD_prefix ..'_Hearts'] = '红宝石'
        },
        Diamonds = {
            [HIGH_CARD_prefix ..'_Diamonds'] = '蓝宝石'
        },
        Clubs = {
            [HIGH_CARD_prefix ..'_Clubs'] = '绿宝石'
        }
    },
    dictionary = {
        ['k_'..(HIGH_CARD_prefix ..'_XPC'):lower()] = 'X-扑克牌',
        k_clear_configures = '当前牌组下此处所有变更将于退回主菜单时清除',

        k_unenhanced = '无增强',
        k_no_seal = '无蜡封',
        k_loaded = '上膛！',
        k_smashed = '击碎！',
        k_exploded = '爆炸！',
        k_mohism_saved = '兼爱，非攻',
        k_petrified = '石化！',
        k_armed = '着甲！',
        k_slain = '斩杀！',
        k_merged = '合体！',
        k_transform = '变形！',
        k_chameleon = '变色！',
        k_induce = '诱导！',
        k_dance = '起舞！',
        k_sonic_boom = '音爆！',
        k_fortified = '强化！',
        k_faceless = '变脸！',
        k_vitrified = '玻化！',
        k_withered = '凋谢！',
        k_evolved = '进化！',
        k_swapped = '互换！',
        k_sacrificed = '献祭！',
        k_busted = '爆牌！',
        k_balor = '邪眼魔王',
        k_not_ready = '牌堆尚未就绪',
        k_ready_sl = '由左至右抽牌',
        k_ready_pl = '由左至右抽牌，先抽第一行',
        k_drawn = '牌已抽完',
        k_blown = '吹散！',
        k_crumbled = '粉碎！',
        k_submerged = '淹没！',
        k_burnt = '焚毁！',
        k_sunk = '沉没！',
        k_shone = '闪耀！',
        k_charged = '充能！',
        k_coming_home = '归来！',
        k_defeated = '击败！',
        k_reaped = '收割！',
        k_revived = '复苏！',
        k_activated = '激活！',
        k_deactivated = '停用！'
    },
    challenge_names = {
        ['c_'.. HIGH_CARD_prefix ..'_RF'] = '皇家同花顺',
        ['c_'.. HIGH_CARD_prefix ..'_SF'] = '同花顺',
        ['c_'.. HIGH_CARD_prefix ..'_4K'] = '四条',
        ['c_'.. HIGH_CARD_prefix ..'_FH'] = '葫芦',
        ['c_'.. HIGH_CARD_prefix ..'_FL'] = '同花',
        ['c_'.. HIGH_CARD_prefix ..'_ST'] = '顺子',
        ['c_'.. HIGH_CARD_prefix ..'_3K'] = '三条',
        ['c_'.. HIGH_CARD_prefix ..'_2P'] = '两对',
        ['c_'.. HIGH_CARD_prefix ..'_1P'] = '一对',
        ['c_'.. HIGH_CARD_prefix ..'_HC'] = '高牌',

        ['c_'.. HIGH_CARD_prefix ..'_Finn'] = "芬恩的左轮手枪",
        ['c_'.. HIGH_CARD_prefix ..'_Vijay'] = "维杰的盆栽",
        ['c_'.. HIGH_CARD_prefix ..'_Chris'] = "克里斯的疗伤术",
        ['c_'.. HIGH_CARD_prefix ..'_Leo'] = "里奥的财富",
        ['c_'.. HIGH_CARD_prefix ..'_Wendy'] = "温蒂的武士刀",
        ['c_'.. HIGH_CARD_prefix ..'_Chelsea'] = "切尔西的热情",
        ['c_'.. HIGH_CARD_prefix ..'_Chloe'] = "克洛伊的恐惧",
        ['c_'.. HIGH_CARD_prefix ..'_Owen'] = "欧文的监狱",
        ['c_'.. HIGH_CARD_prefix ..'_Burst'] = "布尔丝特的献身",
        ['c_'.. HIGH_CARD_prefix ..'_Brothers'] = "欧德曼兄弟",
    },
    v_text = {
        ['ch_c_'..'Vijay'] = {'所有{C:attention}Boss盲注{}均为{C:attention}植物{}'},
        ['ch_c_'..'Chelsea'] = {'所有{C:attention}Boss盲注{}均为{C:attention}钩子{}'}
    }
}

return {
    descriptions = descriptions,
    misc = misc
}