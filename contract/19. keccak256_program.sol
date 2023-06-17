/*
keccak256 (Cryptographic Hash Function)
- what is it?
    -   function that takes in arbitrary size input and outputs a data of fixed size.
    - properties
        - deterministic
            - hash(x) = h, every time
        - quick to compute the hash.
        - irreversible
            - given h, hard to find x such that hash(x) = h
        - small change in input changes the output significantly
        - collision resistant
            - hard to find x, y such that hash(x) = hash(y)

Example
- guessing game (pseudo random)
*/

contract HashFunction{
    // bytes32 hash = keccak256(abi.encodePacked('hello', uint(1), uint(2), address(123)));

    function hash(string memory _text, uint _num, address _add) public pure returns (bytes32){
        return keccak256(abi.encodePacked(_text, _num, _add));
    }
}