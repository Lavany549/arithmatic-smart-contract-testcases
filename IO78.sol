// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

import "@openzeppelin/contracts/math/SafeMath.sol";

contract SafeMathExample {
    using SafeMath for uint256;

    uint256 public result;

    function add(uint256 a, uint256 b) public {
        result = a.add(b);
    }

    function sub(uint256 a, uint256 b) public {
        result = a.sub(b);
    }

    function mul(uint256 a, uint256 b) public {
        result = a.mul(b);
    }

    function div(uint256 a, uint256 b) public {
        result = a.div(b);
    }
}
