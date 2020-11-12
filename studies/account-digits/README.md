# Account Digits

An Information Security corporation has been hired by a new bank to implement a new system of verification digits to use in their accounts system. The bank required that the digits should not be calculated in a conventional manner.

The Information Security corporation presented a new solution in which each account number will have 3 verification digits.

The algorithmn would be as follows:

- First, it should calculate a number `S`, by multiplying each account number digit in _even positions_ by `2`. All digits in _odd positions_ should be multiplied by `1`. `S` is the sum of the resulting numbers.

   - Consider the initial position `0` as being the least significant digit.

- The first verification digit is the remainder of the division of `S` by `10`.

- For the second digit, it should compute the lowest prime number `P`, such that `P >= S`. The second digit is the remainder of the division of `P ^ 2 - P` by `10`.

- The third digit is obtained by taking the remainder of the division of the `(S + 1)nth term` of the Fibonacci sequence.


## Task
You must code a program that validates the account number, given the account number (`N`) and its verification digits (`V`).


## Restrictions
- `1 <= N <= 10 ^ 6`
- `0 <= V <= 10 ^ 3`


## Sample test cases
Number | Digits | Is Valid
:----- | :----- | :-------
138487 | 523    | Yes
917233 | 108    | No
602937 | 363    | Yes
112113 | 420    | Yes
