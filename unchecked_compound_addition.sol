pragma solidity ^0.7.0;

contract CompoundAdd {
    uint8 public value ;

    function increase() public {
        value += 10; // overflow
    }
}
