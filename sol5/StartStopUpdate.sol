pragma solidity ^0.5.13;

contract StartStopUpdateExample {
    address owner;

    bool public paused;

    constructor() public {
        owner = msg.sender;
    }

    function sendMoney() public payable {

    }

    function setPaused(bool _pasused) public {
        require(msg.sender == owner, "YOU ARE NOT THE OWNER");
        paused = _pasused;
    }


    function withdrawMoney(address payable _to) public {
        require(msg.sender == owner, "YOU ARE NOT THE OWNER");
        require(!paused, "ITS PAUSED");
        _to.transfer(address(this).balance);
    }

    function destroySmartContract(address payable _to) public {
        require(msg.sender == owner, "YOU ARE NOT THE OWNER");
        selfdestruct(_to);
    }
}
