// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract IntegerOverflowTest {
    // True Positive Cases (Should be detected)
    
    // 1. Direct overflow with constants
    function directOverflow() public pure returns (uint256) {
        return 2**256 - 1; // Definitely overflows - FP
    }
    
    // 2. Multiplication overflow
    function multiplyOverflow(uint256 a, uint256 b) public pure returns (uint256) {
        return a * b; // No checks - can overflow
    }
    
    // 3. Dangerous left shift
    function shiftOverflow(uint256 a, uint256 b) public pure returns (uint256) {
        return a << b; // Can overflow if b >= 256
    }
    
    // 4. Power operation overflow
    function powerOverflow(uint8 a, uint8 b) public pure returns (uint256) {
        return a ** b; // Can easily overflow
    }
    
    // 5. Casting overflow
    function castOverflow(uint256 a) public pure returns (uint8) {
        return uint8(a); // Loses bits
    }
    
    // 6. Increment overflow
    function incrementOverflow(uint256 a) public pure returns (uint256) {
        return a + 1; // Will overflow if a == max
    }
    
    // False Positive Cases (Should NOT be detected)
    
    // 1. Safe addition with constraints
    function safeAdd(uint256 a, uint256 b) public pure returns (uint256) {
        require(a <= type(uint256).max - b, "Addition overflow");
        return a + b;
    }
    
    // 2. Safe multiplication with constraints
    function safeMul(uint256 a, uint256 b) public pure returns (uint256) {
        if (a == 0) return 0;
        require(b <= type(uint256).max / a, "Multiplication overflow");
        return a * b;
    }
    
    // 3. Safe shift with mask
    function safeShift(uint256 a, uint8 b) public pure returns (uint256) {
        return (a << b) & 0xFF; // Mask limits result
    }
    
    // 4. Safe cast with constraints
    function safeCast(uint256 a) public pure returns (uint8) {
        require(a <= type(uint8).max, "Value too large for uint8");
        return uint8(a);
    }
    
    // 5. Using SafeMath library (simulated)
    function safeMathAdd(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");
        return c;
    }
    
    // 6. Bounded loop with safe increment
    function safeLoop(uint8 iterations) public pure {
        for (uint8 i = 0; i < iterations; i++) {
            // Safe because iterations is uint8 and checked
        }
    }
    
    // Edge Cases
    
    // 1. Max value operations
    function maxValueOps() public pure returns (uint256) {
        uint256 max = type(uint256).max;
        return max - 1; // Safe but close to edge
    }
    
    // 2. Zero multiplication
    function zeroMul(uint256 a) public pure returns (uint256) {
        return a * 0; // Always safe
    }
}
