pragma solidity 0.7.0;

contract ChangeBalance {
    uint8 public balance;
    uint8 public balance1 = 0;

    function decrease() public {
        balance--;
    }

    function increase() public {
        balance = balance1 + 1 ;
    }
}
