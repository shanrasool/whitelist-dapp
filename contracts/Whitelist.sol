//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Whitelist {
    // Maximum number of address that can be whitelisted.
    uint8 public maxWhitelistedAddresses;

    // It's a mapping to check the Address is whitelisted or not.
    mapping(address => bool) public whitelistedAddresses;

    uint8 public numAddressesWhitelisted;

    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    // Function to add address to whitelist
    function addAddressToWhitelist() public {
        require(!whitelistedAddresses[msg.sender], "Sender has already been Whitelisted.");
        require(numAddressesWhitelisted < maxWhitelistedAddresses, "More Addresses can't be added, limit reached!");
        whitelistedAddresses[msg.sender] = true;
        numAddressesWhitelisted += 1;
    }
}