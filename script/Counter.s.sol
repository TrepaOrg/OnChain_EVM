// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

/** 
forge script script/Counter.s.sol --broadcast --rpc-url badnet --account DEV \
--verify --verifier blockscout --verifier-url https://blockscout.badnet.mitosis.org/api/
**/
import {Script, console} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
    Counter public counter;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        counter = new Counter();

        vm.stopBroadcast();
    }
}
