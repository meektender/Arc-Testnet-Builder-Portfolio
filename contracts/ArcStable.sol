// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ArcStable is ERC20 {
    address public mogul;

    // This runs only ONCE when you deploy
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        mogul = msg.sender;
        // Minting 1,000,000 tokens to your wallet immediately
        _mint(msg.sender, 1000000 * 10**decimals());
    }

    // Only you can create more of your currency
    function mintMore(address to, uint256 amount) public {
        require(msg.sender == mogul, "Only the Mogul can mint");
        _mint(to, amount);
    }
}
