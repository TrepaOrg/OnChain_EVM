// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script, console} from "forge-std/Script.sol";
import {SafeProxyFactory} from "@gnosis/safe-contracts/proxies/SafeProxyFactory.sol";

address constant singleton = 0x000000000000000000000000000000000000dEaD;
contract FactoryScript is Script {
    SafeProxyFactory public factory;


    function run() public {
        vm.startBroadcast();

        factory = new SafeProxyFactory();

        vm.stopBroadcast();
    }
}
