// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MusicFanToken is ERC20, Ownable {
    constructor() ERC20("MusicFanToken", "MFT") Ownable(msg.sender) {
        // Mint initial supply to the contract deployer (owner)
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    // Function to retrieve the balance of an address
    function balance(address account) public view returns (uint256) {
        return balanceOf(account);
    }
} 
