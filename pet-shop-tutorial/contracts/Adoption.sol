pragma solidity ^0.5.0;

contract Adoption{
address[16] public adopters;
function adopt(uint PetID) public returns (uint){
require(PetID >= 0 && PetID <= 15);
adopters[PetID] = msg.sender;
return PetID;
}
function getAdopters() public view returns (address[16] memory){
    return adopters;
}
}