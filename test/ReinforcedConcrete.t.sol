// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

import {Test, console2} from "forge-std/Test.sol";
import "script/ReinforcedConcrete.s.sol";
import "foundry-huff/HuffDeployer.sol";

contract RCTest is Test {
    ReinforcedConcrete public rc;

    function setUp() public {
        rc = new Deploy().run();
    }

    function testHasher() public {
        uint256 val = rc.hash(
            0x0bc1f4af0cd701956511c0e5d4927d17ff43c6ea675de7c1dff3f99132584040,
            0x2d9397c680616ebc94f9c5bbba010835ec72d65286ae8ae184cc39daffee77c4
        );
        assertEq(val, 0x05a3f4f1741752744392ce84bb565315b13bb9a73758412f799276333019d901);
    }

    function testHasherGas() public view {
        rc.hash(
            0x0bc1f4af0cd701956511c0e5d4927d17ff43c6ea675de7c1dff3f99132584040,
            0x2d9397c680616ebc94f9c5bbba010835ec72d65286ae8ae184cc39daffee77c4
        );
    }
}
