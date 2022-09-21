//SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;
import "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public NewStorageArray;

    function CreateSimpleStorageContract() public{
        SimpleStorage StoreAddress = new SimpleStorage();
        NewStorageArray.push(StoreAddress);
    }
}