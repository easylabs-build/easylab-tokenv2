pragma solidity ^0.8.0;

contract EasyDistribution{

    uint public participants;
    event SignUp(uint id, address indexed participants, uint age, string condition
    );

    struct EasyData{
        address participants;
        string condition;
        uint age;
    }

    mapping(uint => EasyData) public easyDatas;

    function signup(uint _age, string calldata _condition, address _caller) public{
        require(_caller != address(0), "No bots");
        
        participants +=1;

        easyDatas[participants] = EasyData({
            participants: msg.sender,
            age: _age,
            condition:  _condition

        });
        
    }













}