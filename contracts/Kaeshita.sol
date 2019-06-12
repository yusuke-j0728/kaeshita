pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/token/ERC721/ERC721Full.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract Kaeshita is ERC721Full, Ownable {
    
    constructor() public ERC721Full("Kaeshita", "KS"){}

    uint256 internal nextTokenId = 0;

    function mint() external {
        uint256 tokenId = nextTokenId;
        nextTokenId = nextTokenId.add(1);
        super._mint(msg.sender, tokenId);
    }

    function setTokenURI(uint256 _tokenId, string calldata _message) external {
        super._setTokenURI(_tokenId, _message);
    }

    function burn(uint256 _tokenId) external {
        super._burn(msg.sender, _tokenId);
    }
}