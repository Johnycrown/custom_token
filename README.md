**Overview**
JojoToken is an ERC-20 compliant token built using Solidity and based on OpenZeppelin's libraries for token functionality and ownership control. The token is designed with basic minting, burning, and transfer functionality. Only the owner of the contract has the right to mint new tokens, while any user can burn or transfer tokens.

**Features**
* Minting Tokens: The owner can mint new tokens and assign them to a specified address.
* Burning Tokens: Any user can burn a specified amount of tokens from their own balance.
* Transferring Tokens: Standard token transfer functionality, allowing users to send tokens to others.
* Ownable Contract: Ensures only the contract owner can perform certain actions like minting.
  
**Contract Details**
* Token Name: JojoToken
* Token Symbol: JOJO
* Decimals: The token uses 18 decimal places, following the ERC-20 standard.
* Initial Supply: 1,000 tokens minted at deployment to the contract owner.
 
**Functions**
1. constructor()
This function is called when the contract is deployed. It mints 1,000 JOJO tokens to the contract owner.

2. mintToken(address recipient, uint256 amount)
Allows the contract owner to mint new tokens to a specified address.

**Requirements:**
Only the owner can call this function.
3. burnToken(uint256 amount)
Allows any user to burn their tokens, reducing the total supply.

Requirements:
The caller must have at least the amount they wish to burn.
4. trasnferToken(address recipient, uint256 amount)
This function transfers tokens from the sender’s account to the recipient’s account.

Note: This function leverages the built-in transfer function of the ERC-20 standard.
Dependencies
This contract uses the following libraries from the OpenZeppelin framework:

ERC20: For the basic functionality of a fungible token.
Ownable: To restrict minting functionality to the owner.
Ensure you have these libraries installed in your project before deploying the contract.

**Deployment**
* Clone the repository or copy the contract code.
* Make sure you have Solidity version ^0.8.13 installed.
* Deploy the contract using your preferred Ethereum development framework, such as Hardhat or Truffle.
* Upon deployment, the initial supply of 1,000 JOJO tokens will be minted to the contract deployer.
 
**License**
This project is licensed under the MIT License.
