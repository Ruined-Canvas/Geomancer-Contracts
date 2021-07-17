// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Geomancer is ERC721 {
    constructor(
        string memory name,
        string memory symbol
    ) ERC721(name, symbol) {
    }

    function Generate(uint256 id) external payable{
        require(msg.value == 1000000000000000, "Invalid payment");
        _safeMint(msg.sender, id);
    }

    function Recover() external {
        require(msg.sender == _deployer());
    }
}