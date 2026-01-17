# 实验四：Solidity 编程与智能合约入门

## 1. 实验目的
[cite_start]学习并掌握 Solidity 编程语言，理解 ERC-20 代币标准，并在以太坊虚拟机（EVM）上部署和测试智能合约 [cite: 2]。

## 2. 核心原理
* [cite_start]**ERC-20 标准**: 包含 `balanceOf`（余额查询）、`transfer`（转账）、`approve`（授权）及 `transferFrom`（委托支出）等核心功能 [cite: 2]。
* [cite_start]**事件 (Events)**: 包括 `Transfer` 和 `Approval`，用于记录区块链上的重大操作 [cite: 2]。

## 3. 实验步骤
1.  **编写合约代码**:
    * [cite_start]首先定义 `IERC20` 接口，声明标准函数逻辑 [cite: 2]。
    * [cite_start]实现 `ERC20.sol` 主合约，并导入接口协议 [cite: 2]。
2.  **环境配置**:
    * [cite_start]打开 [Remix IDE](https://remix.ethereum.org/) 并导入合约文件 [cite: 2]。
3.  **编译与部署**:
    * [cite_start]在 Remix 中选择编译器版本进行代码编译 [cite: 2]。
    * [cite_start]在 "Deploy & Run Transactions" 页面，选择 Remix VM 环境部署合约 [cite: 2]。
4.  **合约功能测试**:
    * [cite_start]**Mint**: 铸造初始代币 [cite: 2]。
    * [cite_start]**Approve**: 授权指定地址一定的代币支出额度 [cite: 2]。
    * [cite_start]**Transfer/TransferFrom**: 测试个人转账及第三方委托转账功能 [cite: 2]。

## 4. 实验体会
[cite_start]以太坊合约一旦部署便不可更改，所有交易步骤均按时间序列记录，具有高度的严谨性 [cite: 2]。