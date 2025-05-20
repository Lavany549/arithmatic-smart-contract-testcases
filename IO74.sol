// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract IntegerOverflowUnderflowTest {
    // Cases that SHOULD be detected (vulnerable)
    
    // 1. Direct overflow in state variable assignment
    uint8 public maxUint8 = 255 ;  // not an overflow
    
    // 2. Direct underflow in state variable assignment
    uint8 public minUint8 = 0 ;    // not an underflow
    
    // 3. Overflow in multiplication
    function multiplyOverflow(uint8 a, uint8 b) public pure returns (uint8) {
        return a * b;  // e.g., 16 * 16 = 256 which overflows uint8
    }

    
    // 4. Underflow in subtraction
    function subtractUnderflow(uint8 a, uint8 b) public pure returns (uint8) {
        uint8 z = a + b;
        return z;  // e.g., 0 - 1 underflows
    }
    
    // 5. Overflow in addition
    function addOverflow(uint8 a, uint8 b) public pure returns (uint8) {
        return a + b;  // e.g., 255 + 1 overflows
    }
    
    // 6. Complex expression that overflows
    function complexOverflow(uint8 a) public pure returns (uint8) {
        return (a * 10) + 100;  // e.g., a=26 → 260+100=360 which overflows
    }
    
    // 7. Left shift overflow
    function shiftOverflow(uint8 a) public pure returns (uint8) {
        return a << 8;  // Shifting 1 by 8 overflows uint8
    }
    
    // 8. Power operation overflow
    function powerOverflow(uint8 a) public pure returns (uint8) {
        return a ** 3;  // e.g., 7**3=343 which overflows uint8
    }
    
    // Cases that should NOT be detected (safe)
    
    // 9. Properly bounded addition
    function safeAdd(uint8 a, uint8 b) public pure returns (uint8) {
        require(a + b >= a, "Addition overflow");  // Safe with check
        return a + b;
    }
    
    // 10. Properly bounded multiplication
    function safeMultiply(uint8 a, uint8 b) public pure returns (uint8) {
        require(a == 0 || b <= 255 / a, "Multiplication overflow");
        return a * b;
    }
    
    // 11. Safe subtraction with check
    function safeSubtract(uint8 a, uint8 b) public pure returns (uint8) {
        require(b <= a, "Subtraction underflow");
        return a - b;
    }
    
    // 12. Using unchecked block (explicitly opting out of checks)
    // function uncheckedAdd(uint8 a, uint8 b) public pure returns (uint8) {
    //     unchecked { return a + b; }  // Explicitly unchecked
    // }
    
    // 13. Literal assignments that fit
    uint8 public validUint8 = 255;   // Valid - max value
    uint8 public anotherValid = 0;   // Valid - min value
    
    // 14. Complex but safe expression
    function complexButSafe(uint8 a) public pure returns (uint8) {
        return (a * 2) + 100;  // Safe for a <= 77
    }
    
    // 15. Safe power operation
    function safePower(uint8 a) public pure returns (uint8) {
        return a ** 2;  // Safe for a <= 16 (since 16²=256 would overflow)
    }
    
    // Edge cases
    
    // 16. Using type max/min constants
    function useTypeMax() public pure returns (uint8) {
        return 255;  // Should be safe
    }
    
    // 17. Casting from larger type
    function castFromLarger(uint256 bigNum) public pure returns (uint8) {
        return uint8(bigNum);  // Could overflow but explicit cast
    }
    
    // 18. Intermediate overflow but final result fits
    function intermediateOverflowFinalFits(uint8 a) public pure returns (uint8) {
        uint16 temp = uint16(a) * 1000;  // Intermediate can be large
        return uint8(temp / 1000);       // Final result fits
    }
    
    // 19. Using SafeMath-like pattern
    function safeMathStyle(uint8 a, uint8 b) public pure returns (uint8) {
        uint16 c = uint16(a) + uint16(b);
        require(c <= 255, "Overflow");
        return uint8(c); // False Negative
    }
}
