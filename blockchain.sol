// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract payment{
    address public admin;
    uint paymentlimitoflevel1;
    uint paymentlimitoflevel2;
    uint paymentlimitoflevel3;


    constructor(){
        admin = msg.sender;
    }


     function usersl1(address _users1) public pure returns(address){
        return _users1;
       
    }


    function usersl2(address _users2) public pure returns(address) {
        return _users2;


    }


    function usersl3(address _users3) public pure returns(address) {
        return _users3;


    }


    function limit1(uint _paymentlimitoflevel1) public returns(uint){
        paymentlimitoflevel1 = _paymentlimitoflevel1;
        require(msg.sender == admin ,"you cannot change payment limit");
        return _paymentlimitoflevel1;
    }


    function limit2(uint _paymentlimitoflevel2) public returns(uint){
        paymentlimitoflevel2 = _paymentlimitoflevel2;
        require(msg.sender == admin ,"you cannot change payment limit");
        return _paymentlimitoflevel2;
    }


    function limit3(uint _paymentlimitoflevel3) public returns(uint){
        paymentlimitoflevel1 = _paymentlimitoflevel3;
        require(msg.sender == admin ,"you cannot change payment limit");
        return _paymentlimitoflevel3;
    }


     function transactionoflevel1(uint _transactionoflevel1) public view returns(uint){
        require(_transactionoflevel1>=paymentlimitoflevel1,"Alert");
        require(msg.sender == admin ,"you cannot change expenditure limit");
        return _transactionoflevel1;
    }
    function transactionoflevel2(uint _transactionoflevel2) public view returns(uint){
        require(_transactionoflevel2>=paymentlimitoflevel2,"Alert");
        require(msg.sender == admin ,"you cannot change expenditure limit");
        return _transactionoflevel2;
    }


    function transactionoflevel3(uint _transactionoflevel3) public view returns(uint){
        require(_transactionoflevel3>=paymentlimitoflevel3,"Alert");
        require(msg.sender == admin ,"you cannot change expenditure limit");
        return _transactionoflevel3;
        }


}
