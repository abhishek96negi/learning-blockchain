pragma solidity 0.5.1;

contract MyContract {
    enum State { waiting, Ready, Active}
    State public state;

    constructor() public {
        state = State.waiting;
    }

    function activate() public {
        state = State.Active;
    }

    function isActive() public view returns(bool){
        return state == State.Active;
    }
}