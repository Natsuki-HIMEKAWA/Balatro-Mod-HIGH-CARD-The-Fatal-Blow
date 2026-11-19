# HIGH CARD: The Fatal Blow
[简体中文](Readme.zh_CN.md) | English

**1 Card, 1 Hand, 1 Joker**

## Introduction
**HIGH CARD: The Fatal Blow** is a mod for *Balatro*, inspired by the Japanese multimedia franchise [*HIGH CARD*](https://en.wikipedia.org/wiki/High_Card). It introduces 52 unique Jokers and related mechanisms based on the series.

## Features
- **New Jokers** — Adds 52 custom Jokers modeled after the X-Playing Cards from *High Card*.
- **New Challenges** - Adds 10 new challenges centered around the Jokers introduced above.
- **Stone Card Logic** — Reveals the normally hidden base value of Stone Cards in a side tooltip.
- **Vanilla Game Fix** — The included `lovely.toml` file fixes a vanilla game bug that prevents *Mr. Bones* from working when a Game Over is caused by running out of cards in your deck.

## Download
**GitHub:** https://github.com/Natsuki-HIMEKAWA/High-Card-Balatro-Mod

## FAQ
**Q:** What's the relationship between this mod and Ken Shi's [High Card Mod](https://github.com/Ken-Shi/Balatro_HighCardMod) released on 2024?

**A:** Although both mods are inspired by *HIGH CARD* and feature 52 X-Playing Cards, **HIGH CARD: The Fatal Blow** is a **separate**, **independently developed** mod for Balatro. It is **neither an update nor a continuation** of Ken Shi's High Card Mod.

**Q:** What's different between this mod and Ken Shi's *High Card Mod*?

**A:** On the major mechanisms centered around X-Playing Cards,
- **Ken Shi's High Card Mod:** The scored card is transformed into X-Playing Card and by playing a High Card hand for the first time in a round, and the card returns to playing card at the end of round. X-Playing Cards can also be obtained via purchasing special boost packs in the store.
- **HIGH CARD: The Fatal Blow:** Playing a single playing card to defeat a Blind transformes that card into its corresponding X-Playing Card, and will not returns to the playing card unless it is sold. The X-Playing Card retains the enhancment and seal of the original card, in order to ensure the returning of the original card.

**Q:** Why do several X-Playing Cards have overlapping effects to those in Ken Shi's High Card Mod?

**A:** 
Both mods are inspired by the same franchise and draw on the characteristics and abilities of its X-Playing Cards.
For certain X-Playing Cards, their established names and abilities naturally suggest a limited range of suitable gameplay effects. As a result, some of them in the two mods may have overlapping effects.

These similarities arise from our similar interpretations of these cards, both mods have their own gameplay mechanics and implementation. It is Our same goal to represent the original X-Playing Cards and their abilities as faithfully as possible while adapting them to Balatro's gameplay.

Reference: [The X-Playing Cards](https://highcard.fandom.com/wiki/The_X-Playing_Cards)

## Compatibility
The following versions have been tested with this mod:
- **Balatro:** `v1.0.1o-full`
- **Steamodded (SMODS):** `v26.1002.0`
- **Lovely Injector:** `v0.10.0`
- **Operating System:** Windows 11

Other versions may work, but have not necessarily been tested.

## Requirements
- [Balatro](https://store.steampowered.com/app/2379780/Balatro/) `v1.0.1o-full`
- [Steamodded (SMODS)](https://github.com/Steamodded/smods) `v26.1002.0`
- [Lovely Injector](https://github.com/ethangreen-dev/lovely-injector) `v0.10.0`

Install Steamodded and Lovely separately before installing this mod.

## Installation
1. Install Balatro, Steamodded, and Lovely.
2. Download the released ZIP file and extract it.
3. Locate the mod folder containing `main.lua`, `main.json`, `challenges.lua`, and `lovely.toml`.
4. Place that folder directly inside your Balatro `Mods` directory.
   Rename the folder to `HighCard` if necessary, and make sure the mod files are not nested inside an extra directory level.
   - **Windows:** `%AppData%/Balatro/Mods/`
   - **macOS:** `~/Library/Application Support/Balatro/Mods/`
   - **Linux / Steam Deck:** The Mods directory depends on your installation method. For Proton installations, follow the [Steamodded Linux installation guide](https://github.com/Steamodded/smods/wiki/Installing-Steamodded-linux).
5. Launch Balatro and verify that **High Card** appears in the Mods menu.

If the `Mods` directory does not exist, create it at the appropriate location.

## Directory Structure
```text
HighCard/
├── assets/
│   ├── 1x/
│   └── 2x/
├── localization/
│   ├── en-us.lua
│   ├── zh_CN.lua
│   └── zh_TW.lua
├── challenges.lua
├── lovely.toml
├── main.json
└── main.lua
```

## Localization
Available languages:
- English (`en-us`)
- Simplified Chinese (`zh_CN`)
- Traditional Chinese (`zh_TW`)

## Bug Reports and Feedback
If you encounter a bug or compatibility issue, please [open an Issue](../../issues). When reporting a problem, include:
- Balatro version
- Steamodded version
- Lovely version
- Steps to reproduce the issue
- Relevant error logs, if available

Suggestions for Joker balancing and additional translations are also welcome.

## Contributing
Bug reports, balancing suggestions, and additional language translations are welcome.

You may [submit a Pull Request](../../pulls) to propose changes for review.
Please note that submitting a Pull Request does not grant permission to redistribute modified versions of this mod.

## License
This project is distributed under a custom non-commercial license.

You may download, use, and redistribute the original, unmodified mod free of charge for personal, non-commercial purposes.

Redistribution of modified versions and commercial use require prior written permission from the copyright holder.

See [LICENSE](LICENSE.md#English) for the full terms.

This is an unofficial fan-made project. It is not affiliated with, endorsed by, or sponsored by the creators or rights holders of *High Card*.