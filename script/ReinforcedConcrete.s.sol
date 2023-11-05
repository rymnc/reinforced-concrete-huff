// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Script.sol";

interface ReinforcedConcrete {
    function hash(uint256, uint256) external pure returns (uint256);
}

contract Deploy is Script {
    function run() public returns (ReinforcedConcrete rc) {
        bytes memory bytecode = new HuffConfig().creation_code("ReinforcedConcrete");
        vm.startBroadcast();
        address deployedAddress;
        assembly {
            deployedAddress := create(0, add(bytecode, 0x20), mload(bytecode))
        }
        rc = ReinforcedConcrete(deployedAddress);
        vm.stopBroadcast();
    }
}
