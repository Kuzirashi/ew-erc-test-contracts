pragma solidity ^0.5.2;

import "./ERC20.sol";
import "./ERC20Detailed.sol";

contract Erc20TestToken is ERC20, ERC20Detailed {

    constructor(address _testaccount, uint _startingBalance) ERC20Detailed("TestToken", "TTK", 18) public {
        uint startingBalance = _startingBalance;

        if (_startingBalance <= 0) {
            startingBalance = 1000000;
        }

        _mint(_testaccount, startingBalance);
    }
}