// SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract JojoToken is ERC20, Ownable{
     constructor() ERC20("JojoToken", "JOJO") Ownable(msg.sender) {
        // Mint initial tokens to the owner (msg.sender)
        _mint(msg.sender, 1000 * 10**uint(decimals()));
    }

    function mintToken(address recipient, uint256 amount) public onlyOwner {
        _mint(recipient, amount);

    }

    function burnToken(uint amount)public{
        _burn(msg.sender, amount);
    }

    function trasnferToken(address recipient, uint256 amount ) public   returns(bool){
      return  super.transfer(recipient, amount);
    }
   
}

