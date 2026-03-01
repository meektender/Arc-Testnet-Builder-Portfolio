// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract ArcGuardian {
    address public mogul;
    address public tokenAddress;
    uint256 public lockTime;
    uint256 public lockedAmount;

    constructor(address _tokenAddress) {
        mogul = msg.sender;
        tokenAddress = _tokenAddress;
    }

    // Function to lock tokens for 5 minutes (for testing)
    function lockTokens(uint256 _amount) public {
        require(msg.sender == mogul, "Only the Mogul can lock");
        require(IERC20(tokenAddress).transferFrom(msg.sender, address(this), _amount), "Transfer failed");
        
        lockedAmount += _amount;
        lockTime = block.timestamp + 5 minutes; 
    }

    // Function to withdraw after the timer hits zero
    function withdraw() public {
        require(msg.sender == mogul, "Only the Mogul can withdraw");
        require(block.timestamp >= lockTime, "Tokens are still guarded!");
        
        uint256 amount = lockedAmount;
        lockedAmount = 0;
        require(IERC20(tokenAddress).transfer(mogul, amount), "Withdraw failed");
    }
}
