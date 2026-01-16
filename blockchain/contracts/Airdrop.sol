// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4; [cite: 4, 5]

import "./IERC20.sol"; [cite: 6]

/// @notice 向多个地址转账ERC20代币的空投合约
contract Airdrop { [cite: 7, 8]

    /// @notice 向多个地址转账ERC20代币
    /// @param _token 转账的ERC20代币合约地址
    /// @param _addresses 空投地址数组
    /// @param _amounts 每个地址的空投代币数量数组
    function multiTransferToken(
        address _token,
        address[] calldata _addresses,
        uint256[] calldata _amounts
    ) external { [cite: 9, 10, 11, 12, 13, 14, 15, 16, 17]
        // 声明IERC20合约变量，初始化ERC20代币合约
        IERC20 token = IERC20(_token); [cite: 18, 19]

        // 校验：_addresses和_amounts数组的长度必须相同
        require(_addresses.length == _amounts.length, "Lengths of Addresses and Amounts are NOT EQUAL"); [cite: 20, 21]

        uint256 totalAmount = getSum(_amounts);  // 获取空投的代币总量 [cite: 22]

        // 校验：合约的余额足够进行空投
        require(token.balanceOf(address(this)) >= totalAmount, "Insufficient token balance"); [cite: 23, 24]
        
        // 循环发送代币到各个地址
        for (uint256 i = 0; i < _addresses.length; i++) { [cite: 25, 26]
            // 调用ERC20的transfer函数向每个地址转账指定数量的代币
            token.transfer(_addresses[i], _amounts[i]); [cite: 27, 28]
        } [cite: 29]
    } [cite: 30]

    /// @notice 计算数组的总和
    /// @param _arr 数字数组
    /// @return sum 数组的总和
    function getSum(uint256[] calldata _arr) public pure returns(uint sum) { [cite: 31, 32, 33, 34]
        // 遍历数组并求和
        for (uint256 i = 0; i < _arr.length; i++) { [cite: 35, 36]
            sum += _arr[i]; [cite: 37]
        } [cite: 38]
    } [cite: 39]
} [cite: 40]