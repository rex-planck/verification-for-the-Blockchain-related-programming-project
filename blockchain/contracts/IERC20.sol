// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/**
 * @dev ERC20 代币标准接口
 * 参考了你在实验报告中提到的 Getters、函数和事件定义 [cite: 2]
 */
interface IERC20 {
    /**
     * @dev 返回存在的代币总数
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev 返回特定账户的代币余额 
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev 将代币从调用者账户转移到另一个账户 
     * 释放 {Transfer} 事件
     */
    function transfer(address recipient, uint256 amount) external returns (bool);

    /**
     * @dev 返回 `owner` 授权给 `spender` 能够支取的代币余额 [cite: 2]
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev 授权 `spender` 账户可以代表调用者支出指定金额的代币 
     * 释放 {Approval} 事件
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev 基于“批准”功能，允许第三方在限额内转移代币 
     * 释放 {Transfer} 事件
     */
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    /**
     * @dev 当代币转移时触发的事件 [cite: 2]
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev 当授权额度更新时触发的事件 [cite: 2]
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);
}