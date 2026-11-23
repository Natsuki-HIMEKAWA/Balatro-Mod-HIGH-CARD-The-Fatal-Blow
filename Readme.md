# HIGH CARD: The Fatal Blow
**English** | [简体中文](Readme.md#至高之牌致命一击)

## Introduction
**HIGH CARD: The Fatal Blow** is a mod for *Balatro*, inspired by the Japanese multimedia franchise [*HIGH CARD*](https://en.wikipedia.org/wiki/High_Card). It introduces 52 unique Jokers and related mechanisms based on the series.

## Features
- **New Jokers** - Adds 52 custom Jokers modeled after the X-Playing Cards from *HIGH CARD*.
- **New Deck** - Adds a new deck, the only deck in which the Jokers introduced above can be obtained.
- **New Challenges** - Adds 20 new challenges centered around the Jokers introduced above.
- **Stone Card Logic** - Reveals the normally hidden base value of Stone Cards in a side tooltip.
- **Vanilla Game Fix** - The included `lovely.toml` file fixes a vanilla game bug that prevents *Mr. Bones* from working when a Game Over is caused by running out of cards in your deck.

## Download
**GitHub:** https://github.com/Natsuki-HIMEKAWA/Balatro-Mod-HIGH-CARD-The-Fatal-Blow/releases

## FAQ
**Q:** What's the relationship between this mod and Ken Shi's *[High Card Mod](https://github.com/Ken-Shi/Balatro_HighCardMod)* released on 2024?

**A:** Although both mods are inspired by *HIGH CARD* and feature 52 X-Playing Cards, **HIGH CARD: The Fatal Blow** is a **separate**, **independently developed** new mod for *Balatro*. It is **neither an update nor a continuation** of Ken Shi's *High Card Mod*.

**Q:** What's different between this mod and Ken Shi's *High Card Mod*?

**A:** On the major mechanisms centered around the generation and restoration of X-Playing Cards,
- ***High Card Mod*:** When playing a High Card hand for the first hand in a round, the scored card transforms into the corresponding X-Playing Card, and the card restores to playing card at the end of round.
- ***HIGH CARD: The Fatal Blow*:** Playing a **single** card to defeat a Blind transforms that card into the corresponding X-Playing Card, and **will not** restore to the original playing card unless it is sold. The X-Playing Card **retains the enhancment and seal** of the original card, ensuring the identical card can be restored when selling the X-Playing Card.

**Q:** Why do several X-Playing Cards have similar or overlapping effects between two mods?

**A:** 
Both mods are inspired by the same franchise and draw on the characteristics and abilities of its X-Playing Cards.
For certain X-Playing Cards, their established names and abilities naturally suggest a limited range of suitable gameplay effects. As a result, some of them in the two mods may have similar or overlapping effects.

These similarities arise from our similar interpretations of these cards, both mods have their own gameplay mechanics and implementation. It is our same goal to represent the original X-Playing Cards and their abilities as faithfully as possible while adapting them to *Balatro*'s gameplay.

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
1. Install *Balatro*, Steamodded, and Lovely.
2. Download the released ZIP file and extract it.
3. Locate the mod folder containing `main.lua`, `main.json`, `challenges.lua`, and `lovely.toml`.
4. Place that folder directly inside your *Balatro* `Mods` directory.
   Rename the folder to `HIGH_CARD` if necessary, and make sure the mod files are not nested inside an extra directory level.
   - **Windows:** `%AppData%/Balatro/Mods/`
   - **macOS:** `~/Library/Application Support/Balatro/Mods/`
   - **Linux / Steam Deck:** The Mods directory depends on your installation method. For Proton installations, follow the [Steamodded Linux installation guide](https://github.com/Steamodded/smods/wiki/Installing-Steamodded-linux).
5. Launch *Balatro* and verify that **HIGH CARD** appears in the Mods menu.

If the `Mods` directory does not exist, create it at the appropriate location.

## Directory Structure
```text
HIGH_CARD/
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

Contributions of additional language translations are also welcome.

## Bug Reports and Feedback
If you encounter a bug or compatibility issue, please [open an Issue](../../issues). When reporting a problem, include:
- *Balatro* version
- Steamodded version
- Lovely version
- Steps to reproduce the issue
- Relevant error logs, if available

Suggestions for Joker balancing are also welcome.

## Contributing
Bug reports, balancing suggestions, and additional language translations are welcome.

You may [submit a Pull Request](../../pulls) to propose changes for review.
Please note that submitting a Pull Request does not grant permission to redistribute modified versions of this mod.

## License
This project is distributed under a custom non-commercial license.

You may download, use, and redistribute the original, unmodified mod free of charge for personal, non-commercial purposes.

Redistribution of modified versions and commercial use require prior written permission from the copyright holder.

See [LICENSE](LICENSE.md#English) for the full terms.

This is an unofficial fan-made project. It is not affiliated with, endorsed by, or sponsored by the creators or rights holders of *HIGH CARD*.

# 至高之牌：致命一击
[English](Readme.md#high-card-the-fatal-blow) | **简体中文**

## 简介
**至高之牌：致命一击**是一款适用于《Balatro》的Mod，灵感来自日本多媒体企划《[至高之牌](https://zh.wikipedia.org/wiki/HIGH_CARD_%E8%87%B3%E9%AB%98%E4%B9%8B%E7%89%8C)》，加入了52张参考该企划相关设定设计的独特小丑牌及相应机制。

## 功能特色
- **新小丑牌** — 新增52张以《至高之牌》的X-扑克牌为原型的小丑牌。
- **新牌组** — 新增1个牌组，上述新小丑牌只能在该牌组中获得。
- **新挑战** — 新增20个基于上述新小丑牌的挑战。
- **石头牌显示** — 在侧边提示框中显示石头牌隐藏的牌面花色与点数。
- **原版游戏补丁** — 目录中的文件`lovely.toml`修复了原版《Balatro》游戏中“骷髅先生”无法在牌堆耗尽时挽救游戏的bug。

## 下载方式
**GitHub:** https://github.com/Natsuki-HIMEKAWA/Balatro-Mod-HIGH-CARD-The-Fatal-Blow/releases

## 常见问题
**问：** 本Mod与Ken-Shi于2024年发布的《[High Card Mod](https://github.com/Ken-Shi/Balatro_HighCardMod)》有什么关系？

**答：** 尽管两个Mod均以《至高之牌》为创作题材并都包含52张X-扑克牌，但**至高之牌：致命一击**是一个与Ken-Shi的《High Card Mod》**完全不同、独立开发**的新项目，**既不是后者的更新，也不是后者的续作**。

**问：** 本Mod与Ken-Shi的《High Card Mod》有什么区别？

**答：** 在围绕X-扑克牌生成和还原的主要机制上，
- **《High Card Mod》：** 每回合首次打出高牌牌型时，计分的那张扑克牌会转化为X-扑克牌，并在回合结束时恢复为普通扑克牌。
- **《至高之牌：致命一击》：** 当打出单张扑克牌击败当前盲注时，该牌会转化为对应的X-扑克牌，且只有将其出售才能使之恢复为普通扑克牌；转化后的X-扑克牌会保留原扑克牌的增强和蜡封属性，确保该牌出售时可恢复为与原先完全一致的扑克牌。

**问：** 为什么两个Mod中的部分X-扑克牌的效果相似或重合？

**答：**

两个Mod均以同一部作品为创作基础，并参考了原作中X-扑克牌的特征与能力；

对其中部分X-扑克牌而言，其既定名称和能力设定本身就限制了适合转化为游戏效果的设计方向，故两个Mod中的部分卡牌会具有相似或重合的效果。

这些相似之处源于双方对同一原作卡牌对象相似的理解与解释，两者拥有各自的核心玩法机制与具体实现方式，目标均是在适配《Balatro》游戏机制的同时尽可能忠实地还原原作X-扑克牌的设定与能力。

参考：[The X-Playing Cards](https://highcard.fandom.com/wiki/The_X-Playing_Cards)

## 兼容性
以下配置已完成测试：
- **Balatro：** `v1.0.1o-full`
- **Steamodded (SMODS)：** `v26.1002.0`
- **Lovely注入器：** `v0.10.0`
- **操作系统：** Windows 11

其他版本或配置可能兼容，但尚未经过完整测试。

## 运行需求
- [Balatro](https://store.steampowered.com/app/2379780/Balatro/) — `v1.0.1o-full`
- [Steamodded (SMODS)](https://github.com/Steamodded/smods) — `v26.1002.0`
- [Lovely Injector](https://github.com/ethangreen-dev/lovely-injector) — `v0.10.0`

安装本Mod前，请先安装Steamodded和Lovely并确保它们能正常运行。

## 安装方法
1. 安装Balatro、Steamodded和Lovely。
2. 下载Release中的ZIP压缩包并解压。
3. 找到包含`main.lua`、`main.json`、`challenges.lua`和`lovely.toml`的Mod文件夹。
4. 将Mod文件夹直接放入Balatro的`Mods`目录中，若名称不同则将文件夹重命名为`HIGH_CARD`，并确保Mod文件没有被额外的文件夹层级包裹。
   - **Windows：** `%AppData%/Balatro/Mods/`
   - **macOS：** `~/Library/Application Support/Balatro/Mods/`
   - **Linux / Steam Deck：** Mods文件夹的具体位置取决于安装方式，通过Proton运行的安装方式请参阅[Steamodded Linux安装指南](https://github.com/Steamodded/smods/wiki/Installing-Steamodded-linux)。
5. 启动Balatro，并在Mods菜单中确认**HIGH CARD**成功显示。

若对应位置不存在`Mods`文件夹，请自行创建。

## 目录结构
```text
HIGH_CARD/
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

## 语言支持
目前支持以下语言：
- 英语（`en-us`）
- 简体中文（`zh_CN`）
- 繁体中文（`zh_TW`）

欢迎参与贡献其他语言的本地化翻译。

## 问题反馈与建议
如果你遇到Bug或兼容性问题，请[提交 Issue](../../issues)。反馈时请尽可能提供以下信息：
- Balatro版本
- Steamodded版本
- Lovely版本
- 问题的复现步骤
- 相关错误日志（如有）

欢迎有关小丑牌平衡性调整的建议。

## 参与贡献
欢迎提交Bug报告、平衡性调整建议和新增语言翻译。

你可以[提交Pull Request](../../pulls)以供项目维护者审查，但不代表如若此做将获得修改本Mod并重新发布的许可。

## 许可证
本项目采用自定义非商业使用许可证。

你可以出于个人非商业用途免费下载、使用和再分发未经修改的原版Mod，但必须遵守许可证中的相关条款；

未经版权持有人事先书面许可，不得再分发本Mod的修改版本，也不得将其用于商业用途。

完整条款请参阅[LICENSE](LICENSE.md#简体中文)。

作为非官方的个人创作项目，本项目与《至高之牌》的创作者及权利持有人没有任何关联，也并未获得其任何形式的授权与赞助。