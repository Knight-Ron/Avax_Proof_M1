// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Error {
    function testRequire(uint _input) public pure {
        // Require should be used to validate conditions such as:
        // - inputs
        // - conditions before execution
        // - return values from calls to other functions
        require(_input > 10, "Input must be greater than 10");
    }

    function testRevert(uint _input) public pure {
        // Revert is useful when the condition to check is complex.
        // This code does the exact same thing as the example above
        if (_input <= 10) {
            revert("Input must be greater than 10");
        }
    }

    uint public number;

    function testAssert() public view {
        // Assert should only be used to test for internal errors,
        // and to check invariants.

        // Here we assert that number is always equal to 0
        // since it is impossible to update the value of number
        assert(number == 0);
    }

    // custom error
    error InsufficientBalance(uint balance, uint withdrawAmount);

    function testCustomError(uint _NewWithdrawAmount) public view {
        uint NewBalance = address(this).balance;
        if (NewBalance < _NewWithdrawAmount) {
            revert InsufficientBalance({balance: NewBalance, withdrawAmount: _NewWithdrawAmount});
        }
    }
}
