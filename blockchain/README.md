
# Blockchain Principles & Smart Contract Implementation

本仓库包含山东大学经济学院《区块链原理》课程相关的编程实践与实验报告 。项目涵盖了从底层的区块链核心算法模拟（Python 实现）到以太坊应用层智能合约（Solidity 开发）的完整内容 。

## 📂 仓库结构说明

```text
blockchain/
├── core/                    # 区块链核心底层原理实现 (Python)
[cite_start]│   ├── merkle_tree.py       # Merkle 树哈希计算实现 [cite: 43]
[cite_start]│   ├── pow_mining.py        # PoW 工作量证明挖矿模拟 [cite: 43]
│   └── tx_verification.py   # 交易有效性验证与区块封装
├── contracts/               # 以太坊智能合约开发 (Solidity)
[cite_start]│   ├── IERC20.sol           # ERC-20 标准接口协议 [cite: 3, 9]
[cite_start]│   └── Airdrop.sol          # 批量代币分发（空投）合约 [cite: 11]
├── docs/                    # 课程实验报告
[cite_start]│   ├── lab_4.docx           # 实验四：Solidity 编程与智能合约入门 [cite: 1]
[cite_start]│   └── lab_5.docx           # 实验五：空投合约原理与实现 [cite: 4]
└── README.md                # 项目说明文档

```

---

## 🛠️ 核心功能模块

### 1. 核心底层模拟 (Python Implementation)

* **Merkle Tree (`merkle_tree.py`)**: 使用 SHA-256 算法递归构建哈希树，通过合并左右子节点哈希值生成唯一的 Merkle Root 。


* **PoW Mining (`pow_mining.py`)**: 模拟比特币挖矿机制。包含难度值设置、Nonce 随机数寻优计算以及区块链合法性验证（校验 Hash 与 Previous Hash 的一致性）。


* **Transaction Verification (`tx_verification.py`)**: 模拟简单的账户余额核销机制。在创建新区块前，通过验证输入金额与账户余额确保交易的合法性。

### 2. 智能合约开发 (Smart Contracts)

* **ERC-20 标准实现**: 深入探讨了代币的标准框架，包括 `balanceOf`（余额查询）、`transfer`（转账）、`approve`（授权）及 `transferFrom`（委托支出）等核心函数 。


* **批量空投合约 (`Airdrop.sol`)**: 实现了一种高效的代币分发策略。
* 通过 `multiTransferToken` 函数，可以一次性向多个地址发送不同数额的代币 。


* 合约内置了数组长度校验及合约余额充足性检查，确保空投过程的严谨性 。





---

## 📖 实验背景与收获


* **核心体会**:
* 理解了 Solidity 静态类型系统及面向对象编程在区块链开发中的重要性 。


* 掌握了使用 Remix IDE 进行合约编译、部署及在以太坊虚拟机（EVM）上进行功能测试的完整流程 。


* 通过代币标准化（ERC-20）的学习，认识到互操作性对去中心化应用程序（dApp）生态的推动作用 。





---

## 🚀 快速开始

1. **环境要求**: Python 3.8+ 及 Solidity 0.8.4+ 。


2. **执行模拟**:
```bash
python blockchain/core/pow_mining.py

```


3. **部署合约**: 将 `contracts/` 目录下的代码导入 [Remix IDE](https://www.google.com/search?q=https://remix.ethereum.org/)，使用编译后的 `Airdrop` 模块进行部署 。


