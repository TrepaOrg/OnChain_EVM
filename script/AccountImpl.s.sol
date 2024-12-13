// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script, console} from "forge-std/Script.sol";
import {Safe} from "@gnosis/safe-contracts/Safe.sol";

contract AccountScript is Script {
    Safe public account;

    function run() public {
        vm.startBroadcast();

        account = new Safe();

        vm.stopBroadcast();
    }
}
