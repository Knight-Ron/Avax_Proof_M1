# Avax_Proof_M1
# Error Handling Smart Contract

This smart contract demonstrates the use of different error handling mechanisms in Solidity: `require`, `revert`, `assert`, and custom errors. 

## Functions

### 1. `testRequire`

- **Purpose:** Validate conditions such as inputs, conditions before execution, and return values from other function calls.
- **Logic:** Ensures that the `_input` is greater than 10. If not, it throws an error with the message "Input must be greater than 10".

### 2. `testRevert`

- **Purpose:** Handle complex conditions for error checking.
- **Logic:** Checks if `_input` is less than or equal to 10. If the condition is met, it reverts the transaction with the message "Input must be greater than 10".

### 3. `testAssert`

- **Purpose:** Test for internal errors and check invariants.
- **Logic:** Asserts that the state variable `number` is always equal to 0. Since there is no function to change the value of `number`, this assertion should always hold true.

### 4. `testCustomError`

- **Purpose:** Demonstrate the usage of custom errors for more efficient and descriptive error handling.
- **Logic:** Checks if the contract's balance is sufficient to withdraw the specified `_NewWithdrawAmount`. If not, it reverts with a custom error `InsufficientBalance`, providing details about the current balance and the withdrawal amount.

## Custom Error

### `InsufficientBalance`

- **Purpose:** Provide a detailed and gas-efficient way to handle specific errors.
- **Fields:** 
  - `balance`: The current balance of the contract.
  - `withdrawAmount`: The attempted amount to withdraw.

## License

This contract is licensed under the MIT License.
