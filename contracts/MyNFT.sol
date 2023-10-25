// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MyNFT is ERC721 {
    address public initialOwner;
    constructor()
        ERC721("MyNFT", "MNFT")
        
    {
        initialOwner=msg.sender;
    }

    function mint(address to, uint256 tokenId) public {
        require(msg.sender==initialOwner,"you are not owner");
        _mint(to, tokenId);
    }
    function changeOwner(address newOwner) public {
        require(msg.sender==initialOwner,"you are not owner");
        initialOwner=newOwner;
    }
}
