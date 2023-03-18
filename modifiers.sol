// SPDX-License-Identifier: MIT

pragma solidity >=0.4.22 <0.9.0;

contract modifiers {
    // syntax
    // modifier modifier_Name(uint256 abc, address owner) {
    //         condition
    //     _;
    // }

    // modifier graterThan5(uint256 a) {
    //     if (a >= 5) _;
    //     else {
    //         revert("It us not greater than 5");
    //     }
    // }

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier isOwner(uint256 q, uint256 w) {
        require(q == 5, "It's not 5");
        require(w == 4, "It's not 4");
        require(msg.sender == owner, "You are not the owner");
        _;
    }

    function sum(uint256 a, uint256 b)
        public
        view
        isOwner(a, b)
        returns (uint256)
    {
        uint256 result = a + b;
        return result;
    }
}
