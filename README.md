# 六月萤火圣诞礼物交换程序 🎄

圣诞节抽奖和礼物交换系统，由两个相互联动的程序组成。

## 项目概述

这是一个为圣诞节设计的礼物交换抽奖系统，包含：

1. **地址表单程序** - 用于收集参与者的地址信息
2. **刮奖页面程序** - 交互式刮刮乐抽奖页面

## 项目结构

```
.
├── src/
│   ├── address-form/        # 地址表单程序
│   │   └── index.html       # 表单页面
│   └── scratch-card/        # 刮奖页面程序
│       ├── index.html       # 刮奖页面
│       └── assets/          # 静态资源（图片等）
├── README.md                # 项目说明
└── .gitignore              # Git 忽略文件
```

## 功能说明

### 地址表单 (Address Form)
- 收集参与者的基本信息和收货地址
- 数据验证和提交功能
- 与刮奖页面联动

### 刮奖页面 (Scratch Card)
- 交互式刮刮乐抽奖界面
- 动画效果和视觉反馈
- 结合收集到的地址信息进行礼物分配

## 快速开始

### 本地运行

1. 克隆此仓库：
```bash
git clone https://github.com/moongrant/firefly-xmas.git
cd firefly-xmas
```

2. 打开浏览器，访问相应的 HTML 文件：
   - 地址表单：`src/address-form/index.html`
   - 刮奖页面：`src/scratch-card/index.html`

## 技术栈

- HTML5
- CSS3
- JavaScript (原生)

## 贡献

欢迎提交 Issues 和 Pull Requests！

## 许可证

MIT License

## 更新日志

### v1.0.0 (2025-11-04)
- 初始版本发布
- 包含地址表单和刮奖页面功能

---

祝圣诞快乐！🎅✨
