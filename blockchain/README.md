# Blockchain Foundations & Smart Contract Implementation

本仓库包含了区块链核心原理的编程实现以及基于以太坊的智能合约开发实例。项目涵盖了从底层密码学数据结构到共识算法，再到应用层代币分发合约的完整逻辑。

## 📂 仓库结构

```text
blockchain/
├── core/                # 区块链核心原理实现 (Python)
│   ├── merkle_tree.py      # Merkle Tree 哈希树构建
│   ├── pow_mining.py       # 工作量证明 (PoW) 挖矿模拟
│   └── tx_verification.py  # 交易有效性验证逻辑
├── contracts/           # 以太坊智能合约 (Solidity)
│   ├── Airdrop.sol         # ERC-20 代币批量空投合约
│   └── IERC20.sol          # ERC-20 标准接口定义
└── docs/                # 实验报告与原理分析
    ├── lab_4.docx          # Solidity 编程与智能合约入门
    └── lab_5.docx          # 空投合约原理与实现报告
🚀 核心模块说明
1. 底层核心原理 (Core)
Merkle Tree 构建: 实现了一个基于 sha256 的二叉哈希树，用于确保区块内交易数据的完整性。


PoW 挖矿模拟: 模拟了区块链的共识机制，通过调整 difficulty 参数控制哈希碰撞难度，并利用 nonce 寻找符合条件的区块哈希 。

交易验证: 实现了基础的余额校验逻辑，确保在创建新区块前每一笔交易的输入输出平衡且合法。

2. 智能合约 (Smart Contracts)

ERC-20 标准: 遵循以太坊代币标准，定义了包括 transfer、balanceOf 和 approve 在内的核心接口，保证了代币的互操作性 。

批量空投 (Airdrop):

通过 multiTransferToken 函数实现高效的代币分发 。

内置了数组长度校验及合约余额检查机制，确保转账操作的安全性和一致性 。
+1

利用循环逻辑遍历地址数组，显著提高了代币分发的效率 。

🛠️ 技术栈

编程语言: Python (用于逻辑模拟), Solidity (^0.8.4, 用于合约开发) 。


开发工具: Remix IDE (合约部署与测试), Git (版本控制) 。


核心算法: SHA-256 哈希算法 。

📝 实验体会
在本项目中，我深入理解了以太坊作为“世界计算机”的不可篡改特性 。通过编写 IERC20 接口和 Airdrop 合约，我掌握了如何通过代码自动执行金融逻辑，为未来在量化金融领域利用区块链技术进行资产管理奠定了基础 。

