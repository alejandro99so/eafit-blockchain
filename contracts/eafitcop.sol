// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract EAFITCOP is ERC20, ERC20Burnable, Ownable, ERC20Permit {
    constructor(address initialOwner, address initialUser)
        ERC20("EAFITCOP", "EAFITCOP")
        Ownable(initialOwner)
        ERC20Permit("EAFITCOP")
    {
        _mint(initialUser, 10000000 * 10 ** decimals());
        _mint(msg.sender, 10000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
