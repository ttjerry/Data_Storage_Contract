// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
import "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public NewStorageArray;

    function CreateSimpleStorageContract() public{
        SimpleStorage StoreAddress = new SimpleStorage();
        NewStorageArray.push(StoreAddress);
    }
    function Interact(uint256 _SimpleStorageIndex,uint256 _SimpleStorage) public{
        NewStorageArray [_SimpleStorageIndex].store(_SimpleStorage);
    }
    function sfGet(uint256 _SimpleStorageIndex)public view returns(uint256){
        return NewStorageArray [_SimpleStorageIndex].retrieve();
    }
}