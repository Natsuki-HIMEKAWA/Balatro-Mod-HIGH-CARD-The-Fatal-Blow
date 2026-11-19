# 至高之牌：致命一击
简体中文 | [English](Readme.md)

**一张牌，一次出牌，一张小丑**

## 简介
**至高之牌：致命一击**是一款适用于Balatro的Mod，灵感来自日本多媒体企划[《至高之牌》](https://zh.wikipedia.org/wiki/HIGH_CARD_%E8%87%B3%E9%AB%98%E4%B9%8B%E7%89%8C)，加入了52张参考该企划相关设定设计的独特小丑牌及相应机制。

## 功能特色
- **全新小丑牌** — 新增52张以《至高之牌》的X-扑克牌为原型的小丑牌。
- **全新挑战** — 新增10个基于上述新小丑牌的挑战。
- **石头牌显示** — 在侧边提示框中显示石头牌隐藏的牌面花色与点数。
- **原版游戏补丁** — 目录中的文件`lovely.toml`修复了原版Balatro游戏中“骷髅先生”无法在牌堆耗尽时挽救游戏的bug。

## 下载方式
**GitHub:** https://github.com/Natsuki-HIMEKAWA/High-Card-Balatro-Mod

## 常见问题
**问：** 本Mod与Ken-Shi于2024年发布的[High Card Mod](https://github.com/Ken-Shi/Balatro_HighCardMod)有什么关系？

**答：**

尽管两个Mod均以《至高之牌》为创作题材并包含52张X-扑克牌，但**至高之牌：致命一击**是一个与Ken-Shi的High Card Mod**完全不同**、**独立开发**的项目，**既不是后者的更新，也不是后者的续作**。

**问：** 本Mod与Ken-Shi的High Card Mod有什么区别？

**答：** 在围绕X-扑克牌的主要机制上，
- **Ken-Shi的High Card Mod：** 每回合首次打出高牌牌型时，计分的那张扑克牌会转化为X-扑克牌，并在回合结束时恢复为普通扑克牌；此外，玩家也可以通过购买商店中的特殊补充包获得X-扑克牌。
- **至高之牌：致命一击：** 当打出单张扑克牌击败当前盲注时，该牌会转化为对应的X-扑克牌，且只有将其出售才能使之恢复为普通扑克牌；转化后的X-扑克牌会保留原扑克牌的增强和蜡封属性，由此保证原扑克牌的返还。

**问：** 为什么两个Mod中的部分X-扑克牌会有相似或重合的效果？

**答：**

两个Mod均以同一部作品为创作基础，并参考了原作中X-扑克牌的特征与能力；

对其中部分X-扑克牌而言，其既定名称和能力设定本身就限制了适合转化为游戏效果的设计方向，故两个Mod中的部分卡牌的效果会相似或重合。

这些相似之处源于双方对同一原作卡牌对象相似的理解与解释，两者拥有各自的核心玩法机制与具体实现方式，目标均是在适配Balatro游戏机制的同时尽可能忠实地还原原作X-扑克牌的设定与能力。

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
4. 将Mod文件夹直接放入Balatro的`Mods`目录中，若名称不同则将文件夹重命名为`HighCard`，并确保Mod文件没有被额外的文件夹层级包裹。
   - **Windows：** `%AppData%/Balatro/Mods/`
   - **macOS：** `~/Library/Application Support/Balatro/Mods/`
   - **Linux / Steam Deck：** Mods文件夹的具体位置取决于安装方式，通过Proton运行的安装方式请参阅[Steamodded Linux安装指南](https://github.com/Steamodded/smods/wiki/Installing-Steamodded-linux)。
5. 启动Balatro，并在Mods菜单中确认**High Card**成功显示。

若对应位置不存在`Mods`文件夹，请自行创建。

## 目录结构
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

## 语言支持
目前支持以下语言：
- 英语（`en-us`）
- 简体中文（`zh_CN`）
- 繁体中文（`zh_TW`）

## 问题反馈与建议
如果你遇到Bug或兼容性问题，请[提交 Issue](../../issues)。反馈时请尽可能提供以下信息：
- Balatro版本
- Steamodded版本
- Lovely版本
- 问题的复现步骤
- 相关错误日志（如有）

欢迎有关小丑牌平衡性调整和新增语言翻译的建议。

## 参与贡献
欢迎提交Bug报告、平衡性调整建议和新增语言翻译。

你可以[提交Pull Request](../../pulls)以供项目维护者审查，但不代表如若此做将获得修改本Mod并重新发布的许可。

## 许可证
本项目采用自定义非商业使用许可证。

你可以出于个人非商业用途免费下载、使用和再分发未经修改的原版Mod，但必须遵守许可证中的相关条款；

未经版权持有人事先书面许可，不得再分发本Mod的修改版本，也不得将其用于商业用途。

完整条款请参阅[LICENSE](LICENSE.md#简体中文)。

作为非官方的个人创作项目，本项目与《至高之牌》的创作者及权利持有人没有任何关联，也并未获得其任何形式的授权与赞助。