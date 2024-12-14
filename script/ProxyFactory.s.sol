// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script, console} from "forge-std/Script.sol";
import {SafeProxy} from "@gnosis/safe-contracts/proxies/SafeProxy.sol";

address constant singleton = 0x000000000000000000000000000000000000dEaD;
contract FactoryScript is Script {
    SafeProxy public account;


    function run() public {
        vm.startBroadcast();

        account = new SafeProxy(singleton);

        vm.stopBroadcast();
    }
}
