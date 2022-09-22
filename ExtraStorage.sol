//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
// inheritance using virtual and override//
import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage{
// +5 to the _FavouriteNumber parameter in the store function
    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }
}