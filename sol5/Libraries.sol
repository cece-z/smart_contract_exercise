pragma solidity ^0.5.11;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/58a3368215581509d05bd3ec4d53cd381c9bb40e/contracts/math/SafeMath.sol";

contract Libraries {

    using SafeMath for uint;

    mapping(address => uint) public tokenBalance;

    constructor() public {
        tokenBalance[msg.sender] = 1;
    }

    function sendToken(address _to, uint _amout) public returns(bool) {
        tokenBalance[msg.sender] = tokenBalance[msg.sender].sub(_amout);
        tokenBalance[_to] = tokenBalance[_to].add(_amout);

        return true;
    }

}
