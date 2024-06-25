# __MusicFanToken(MFT) Contract__
The __MusicFanToken (MFT)__ is an ERC20 token designed for music enthusiasts. It allows the owner to mint new tokens and users to burn tokens they own. The contract uses OpenZeppelin's ERC20 and Ownable contracts to ensure security and standardization.

# description
- **Minting**: Only the contract owner can mint new tokens.
- **Burning**: Any token holder can burn their tokens.
- **Balance** Retrieval: Check the balance of any address.

## Getting Started
### Installing
To download the code, you can visit the following file path:-[https://github.com/OMSANGWAN01/ETH-AVAX_assesment_3/blob/main/assesment3.sol]

## Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at (https://remix.ethereum.org/.)

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Meta.sol). Copy and paste the following code into the file: contract MyToken
```
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
```
## Authors
Om Sangwan (omsangwan4087@gmail.com)

## License
This project is licensed under the MIT License - see the LICENSE.md file for details
