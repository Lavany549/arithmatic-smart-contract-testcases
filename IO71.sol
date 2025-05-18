pragma solidity ^0.7.0;

contract SafeUnderflow {

    function triggerUnderflow() public returns(int) {
        return (-1) ** (1**100);
    }
}

