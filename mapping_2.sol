pragma solidity ^0.4.17;

contract employee {
    
    struct empdetails {
        
        uint8 emp_id;
        string emp_name;
        string emp_company;
        string emp_section;
        uint emp_salary;
        
    }
    
    mapping(address=>empdetails)fulldata;
    
    function setemp(address add, uint8 emp_id, string emp_name, string emp_company, string emp_section, uint emp_salary) public {
        
        fulldata[add] = empdetails(emp_id,emp_name,emp_company,emp_section,emp_salary);
        
    }
    
    function getemp(address add) public constant returns (uint8,string,string,string,uint) {
        
        return (fulldata[add].emp_id,fulldata[add].emp_name,fulldata[add].emp_company,fulldata[add].emp_section,fulldata[add].emp_salary);
        
        
    }
    
}