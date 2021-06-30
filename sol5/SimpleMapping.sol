pragma solidity ^0.6.0;

contract SimpleMapping {
    mapping(uint => bool) public myMapping;
    mapping(address => bool) public myAddressMaping;


    function setValue(uint _index) public {
        myMapping[_index] = true;
    }

    function setMyAddresstoTrue() public {
        myAddressMaping[msg.sender] = true;
    }
}
