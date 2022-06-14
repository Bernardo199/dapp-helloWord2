// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.14;
  
contract HelloWorld {

	string public yourName ;
	constructor()  {
			yourName = "Unknown" ;
	}

	function setName(string memory nm) public{
			yourName = nm ;
	}

}