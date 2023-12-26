// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract ContactList {

	struct person{
	string name;
	string phone;
	}
	
	person[] phonebook;

	function add(string memory  name,string memory phone) public returns (string memory){
		person memory p = person(name,phone);
		phonebook.push(p);
		return ("contact added successfully");
	}

	function phonebookSize() public view returns (uint){
	return phonebook.length;
	}

	function getPerson(string memory name) view public returns (string memory){
		for(uint i = 0;i<phonebook.length;i++){
			if(keccak256(abi.encodePacked(phonebook[i].name)) == keccak256(abi.encodePacked(name))){
			return phonebook[i].phone;
			
			}
		}
		return "";
	}

}
