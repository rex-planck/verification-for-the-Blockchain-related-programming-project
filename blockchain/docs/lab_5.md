# 实验五：空投合约原理与实现

## 1. 实验目的
[cite_start]利用智能合约实现 ERC-20 代币的批量分发（空投），提高分发效率 [cite: 5]。

## 2. 核心算法逻辑
* **批量转账 (`multiTransferToken`)**:
    * [cite_start]接收代币地址、收款人数组及对应金额数组 [cite: 16, 17, 18, 19]。
    * [cite_start]**长度校验**: 确保地址数组和金额数组长度一致 [cite: 24]。
    * [cite_start]**余额校验**: 计算空投总量，并检查合约是否有足够余额 [cite: 25, 27]。
    * [cite_start]**循环发送**: 遍历地址数组，调用 `transfer` 执行转账 [cite: 28, 29, 31]。
* **辅助函数 (`getSum`)**:
    * [cite_start]遍历金额数组并计算总和 [cite: 37, 39, 40]。

## 3. 实验步骤
1.  **开发空投合约**:
    * [cite_start]编写 `Airdrop` 合约，引入 `IERC20` 接口以便与代币合约交互 [cite: 9, 11]。
2.  **编译合约**:
    * [cite_start]使用 Solidity `^0.8.4` 版本在 Remix 中进行编译 [cite: 8]。
3.  **部署测试**:
    * [cite_start]在 Remix VM (Cancun) 环境下部署合约 [cite: 5]。
    * [cite_start]通过 `multiTransferToken` 函数输入测试地址列表和金额进行批量转账测试 [cite: 5]。

## 4. 实验总结
[cite_start]通过空投合约，项目方可以显著提高向多个用户分发代币的效率，避免了逐个转账的繁琐操作 [cite: 5]。