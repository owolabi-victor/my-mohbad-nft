// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {BasicNft} from "../src/BasicNft.sol";
import {DevOpsTools} from "lib/foundry-devops/src/DevOpsTools.sol";

contract MintBasicNft is Script{
      string public constant PUG =
      "ipfs://QmcKW3JoqyyAcajRvqhjeXFYSJZE5FyPHAVjaRpR5bDLxH";

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("BasicNft", block.chainid);

        mintNftOnContract(mostRecentlyDeployed);
    }

    function mintNftOnContract(address contractAddress) public {
        vm.startBroadcast();
        BasicNft(contractAddress).mintNft(PUG);
        vm.stopBroadcast();
    }
}

// http://bafybeigpxa57c3646xk3mjir3jd62xwih4562qbp3vjfeb4tetr75efagi.ipfs.localhost:8080/