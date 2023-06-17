pragma solidity 0.6.0;
// modifier

contract MyContract{
    // 1. modifier syntax
    // 2. passing arguments
    // 3. chaining modifiers
    // 4. example for access control

    function foo(uint a) external myModifier1(a) myModifier2(a){
        // do some stuff
    }

    modifier myModifier1(uint a){
        require(a ==10, 'my error message');

        _;
    }

    modifier myModifier2(uint a){
        require(a==10, 'my error message');
        _;
    }
}