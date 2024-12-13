// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import {Safe} from "@gnosis/safe-contracts/Safe.sol";

contract DeployTest is Test {
    Safe impl;

    function setUp() public {
        impl = new Safe(); // Deploy the Safe contract
        assertEq(impl.getThreshold(), 1, "Threshold should be 1 initially");
    }

    function testOwners() public {
        vm.expectRevert(abi.encodeWithSelector(bytes4(keccak256("Panic(uint256)")), 0x32));
        assertEq(impl.getOwners().length, 0, "Owners count should be 0 initially");
    }
}
