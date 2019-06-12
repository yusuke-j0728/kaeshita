pragma solidity ^0.5.0;

import "openzepplin-solidity/contracts/token/ERC721/ERC721Full.sol";
import "openzepplin-solidity/contracts/ownership/Ownable.sol";

contract Kaeshita is ERC721Full, Ownable {
    constructor() public ERC721Full("Kaeshita", "KS"){}

    uint256 internal nextTokenId = 0;

    function mint() external {
        
    }
}