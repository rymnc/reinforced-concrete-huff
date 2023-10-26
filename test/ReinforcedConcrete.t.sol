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
        // concrete assertion
        // assertEq(val, 0x05a3f4f1741752744392ce84bb565315b13bb9a73758412f799276333019d901);
        // bricks assertion
        // assertEq(val, 0x21b2d62d0463a46cd3ee90f6e6f02fadfa0ef96239e05d925cf21c11950be875);
        // first rounds assertion
        assertEq(val, 0x0a1bbc638e16abd280864ccd79f173586743ae47a13140600d3cf98a8ffa4dd4);
    }

    function testHasherGas() public view {
        rc.hash(
            0x0bc1f4af0cd701956511c0e5d4927d17ff43c6ea675de7c1dff3f99132584040,
            0x2d9397c680616ebc94f9c5bbba010835ec72d65286ae8ae184cc39daffee77c4
        );
    }
}
