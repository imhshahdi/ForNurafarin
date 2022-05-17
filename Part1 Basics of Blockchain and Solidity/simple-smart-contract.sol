pragma solidity >=0.4.0 <0.9.0;

contract ZombieFactory{
    //This function should be private and have two parameters
    // String called name (memory)
    // Integer called dna
    function _creatZombie(string memory _name, uint _dna) private {

    }
    /**
    This function should be private and also only runs on the local node,
    and won't create a transaction on the blockchain.
    Additionally, it should return an integer.
        - It has one parameter String called str (memory)
        - Generate a random number using keccak256.
        - Use str to make random number and keep it in an integer called rand.
        - return rand % 10
    **/
    function _generateRandomDna(string memory _str) private view returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % 10;
    }
    /**
        What’s the role of 10 in the above sentence?
        Answer: Because a hash generates several numbers,
        we addig 10 to subtract one from the number of hash numbers.
    **/
}