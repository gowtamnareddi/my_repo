pragma solidity ^0.4.17;

contract employee {
    struct person {
        
        string name;
        uint8 age;
    }
    
    mapping(address=>person)empdetails;
    
    function setemp(address employee_add, string name, uint8 age) public {
        empdetails[employee_add] = person(name,age);
        
    }
    
    function getemp(address employee_add) public constant returns (string, uint8) {
        
        return(empdetails[employee_add].name, empdetails[employee_add].age);
        
    }
}