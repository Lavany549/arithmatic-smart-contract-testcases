pragma solidity ^0.7.0;

contract SafeLoopMult {
    function multiplySmall(uint8 a) public pure returns (uint8) {
        require(a < 10);
        return a * a;
    }
}
