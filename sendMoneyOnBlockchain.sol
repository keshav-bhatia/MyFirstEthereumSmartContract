pragma solidity >=0.7.0 <0.9.0;

contract SmartBankAccount {

    uint totalContractBalance = 0;

    function getContractBalance() public returns(uint){
        return totalContractBalance;
    }
    
    mapping(address => uint) balances;
    
    function addBalance(address userAddress, uint amount) public payable {
        balances[userAddress] = amount;
        totalContractBalance = totalContractBalance + amount;
    }
    
    

}
