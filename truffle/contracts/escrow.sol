pragma solidity ^0.4.19;

contract EscrowContract {
    address public depositor;
    address public beneficiary;
    address public arbiter;

    event Funded(uint256 value);
    event Approved(uint256 value);

    function EscrowContract(address _arbiter, address _beneficiary) payable {
        arbiter = _arbiter;
        beneficiary = _beneficiary;
        depositor = msg.sender;
        Funded(msg.value);
    }

    function approve() public {
        require(msg.sender == arbiter);
        beneficiary.transfer(this.balance);
        Approved(this.balance);
    }
}