// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IntegerOverflowUnderflowTest {
    // === OVERFLOW / UNDERFLOW CASES (DETECTABLE) ===

    // 1. Direct overflow on state variable assignment
    uint8 public maxOverflow = 255 ; 
    // 2. Direct underflow on state variable assignment
    uint8 public minUnderflow = 0 ;  

    // 3. Multiplication overflow with constants
    function mulOverflow() public pure returns (uint8) {
        uint8 a = 16;
        uint8 b = 16;
        return a * b;  // 256
    }

    // 4. Subtraction underflow with constants
    function subUnderflow() public pure returns (uint8) {
        uint8 a = 1;
        uint8 b = 2;
        return a - b;  // -1 → underflow
    }

    // 5. Addition overflow
    function addOverflow() public pure returns (uint8) {
        uint8 a = 200;
        uint8 b = 100;
        return a + b;  // 300 → overflow
    }

    // 6. Complex expression overflow
    function complexExprOverflow() public pure returns (uint8) {
        uint8 a = 25;
        return (a * 10) + 10;  // 260
    }

    // 7. Left shift overflow
    function shiftOverflow() public pure returns (uint8) {
        uint8 a = 1;
        return a << 8;  // 256 → overflow
    }

    // 8. Exponentiation overflow
    function powerOverflow() public pure returns (uint8) {
        uint8 a = 7;
        return a ** 3;  // 216, ok; 7**3 = 343 → overflow
    }

    // 9. Unary minus on unsigned
    function unaryMinusUnderflow() public pure returns (uint8) {
        uint8 a = 5;
        // return a * (-1);  // equivalent to 256 - a handled by Solidity
        return a;
    }

    // 10. Bitwise NOT on unsigned (not overflow, but may be interesting)
    function bitwiseNot() public pure returns (uint8) {
        uint8 a = 255;
        uint8 b = a + 1;  // 255 + 1 = 0 (overflow)
        return b;
    }

    // 11. Casting overflow
    function castOverflow() public pure returns (uint8) {
        uint256 a = 300;
        return uint8(a);  // truncates to 44
    }

    // === SAFE CASES (SHOULD NOT BE DETECTED) ===

    // 12. Safe literal
    uint8 public safeLiteral = 100;

    // 13. Safe addition
    function safeAdd() public pure returns (uint8) {
        uint8 a = 50;
        uint8 b = 40;
        return a + b;  // 90
    }

    // 14. Safe subtraction
    function safeSub() public pure returns (uint8) {
        uint8 a = 100;
        uint8 b = 50;
        return a - b;  // 50
    }

    // 15. Safe power
    function safePower() public pure returns (uint8) {
        uint8 a = 4;
        return a ** 2;  // 16
    }

    // 16. Safe cast
    function safeCast() public pure returns (uint8) {
        uint256 a = 200;
        return uint8(a);  // safe
    }

    // 17. Intermediate wide operation, final fits
    function safeIntermediate() public pure returns (uint8) {
        uint8 a = 5;
        uint16 temp = uint16(a) * 1000; 
        return uint8(temp / 1000);  // 5
    }

    // 18. Safe unary minus using int8
    function safeUnaryMinus() public pure returns (int8) {
        int8 a = 5;
        return -a;  // -5 signed so safe
    }

    // 19. Safe bitwise NOT using int8
    function safeBitwiseNot() public pure returns (uint8) {
        uint8 a = 1;
        return ~a;  // -2 overflows
    }
    function safeBitwiseNotsigned() public pure returns (int8) {
        int8 a = 1;
        return ~a;  // -2 signed so doesnt overflow
    }

    // 20. Checked operation using require
    function checkedAdd(uint8 a, uint8 b) public pure returns (uint8) {
        require(a + b >= a, "Overflow!");
        return a + b;
    }
}
