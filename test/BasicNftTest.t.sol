//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {BasicNft} from "../src/BasicNft.sol";
import {DeployBasicNft} from "../script/DeployBasicNft.s.sol";

contract BasicNFTTest is Test {
  DeployBasicNft public deployer;
  BasicNft public basicNft;
  address public USER = makeAddr("user");
  string public constant PUG =
      "ipfs://QmcKW3JoqyyAcajRvqhjeXFYSJZE5FyPHAVjaRpR5bDLxH";

  function setUp() public {
      deployer = new DeployBasicNft();
      basicNft = deployer.run();
  }
  function testNameIsCorrect() public view {
  string memory expectedName = "mohbad";
  string memory actualName = basicNft.name();

  assert(keccak256(abi.encodePacked(expectedName)) == keccak256(abi.encodePacked(actualName)));
}


  
      
  function testCanMintAndHaveABalance() public {
    vm.prank(USER);
    basicNft.mintNft(PUG);

    assert(basicNft.balanceOf(USER) == 1);
    assert(keccak256(abi.encodePacked(PUG)) == keccak256(abi.encodePacked(basicNft.tokenURI(0))));
  }

}