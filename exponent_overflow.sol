pragma solidity ^0.7.0;

contract ExponentDanger {
    function power(uint8 x) public pure returns (uint8) {
        return x ** 10; // Likely overflow if x > 1
    }
}
