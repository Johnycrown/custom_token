**JojoToken**


**Project Overview**

JojoToken is a simple ERC20 token built using OpenZeppelin libraries. It allows minting and burning of tokens by the contract owner, providing flexibility to control token supply. Designed for general-purpose use, the JojoToken can be easily integrated into various decentralized applications (dApps) or used as a base for building more complex token systems.

**Description**

The JojoToken contract implements the ERC20 standard, ensuring compatibility with decentralized exchanges, wallets, and other platforms. The contract includes basic functionality such as:

* Minting new tokens to any address by the owner
* Burning tokens from the caller's account
* Transferring tokens between accounts
  
This token is built on Solidity 0.8.13 and utilizes OpenZeppelin's well-tested contract libraries to ensure security and best practices in the token's design. The initial supply of 1,000 tokens is minted to the contract creator during deployment.

**Getting Started**

Installing
* Clone this repository:
    git clone https://github.com/Johnycrown/custom_token.git
cd JojoToken
Install dependencies:
    npm install
Ensure you have a valid Ethereum blockchain setup, or you can use a testnet such as Rinkeby.

**Modifications**
  
To change the initial supply, you can modify the _mint function within the constructor of the JojoToken.sol file.

solidity
Copy code
_mint(msg.sender, 1000 * 10**uint(decimals())); // Modify 1000 to any initial supply you desire

**Executing Program**

Deploy the contract
Compile the smart contract:

    npx hardhat compile
    
Deploy the contract to a local or testnet blockchain:

    npx hardhat run scripts/deploy.js --network rinkeby

**Help**

Common issues:

Gas limit issues: If your transaction fails due to an out-of-gas error, consider increasing the gas limit in your interaction command.


Run the help command to see available options:
    npx hardhat help

    
**Authors**

Name - Johnycrown
Email: oladejijohn60@gmail.com

**License**

This project is licensed under the MIT License - see the LICENSE.md file for details.

