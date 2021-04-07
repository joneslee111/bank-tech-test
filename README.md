# Bank Tech Test
A simple app that allows the user to deposit money, withdraw money and can print out a bankstatement to an account, used in irb.

## Planning
#### User Stories
##### User Story 1
```
As a client,
So that I can save money,
I would like to be able to deposit into my account
```
##### User Story 2
```
As a client,
So that I can spend my money,
I would like to be able to withdraw from my account
```
##### User Story 3
```
As a client,
So that I can see how much money I have saved,
I would like to be able to print my bank statement
```
#### Domain Model
##### User Story 1
```
+---------+-------------+
| Objects |   Messages  |
+---------+-------------+
| User    |             |
| Account | .deposit()  |
+---------+-------------+
```
##### User Story 2
```
+---------+-------------+
| Objects |   Messages  |
+---------+-------------+
| User    |             |
| Account | .withdraw() |
+---------+-------------+
```
##### User Story 3
```
+-----------+------------+
| Objects   |  Messages  |
+-----------+------------+
| User      |            |
| Statement | .print     |
+-----------+------------+
```

#### Sequence Diagram

## Specification

#### Requirements

+ You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
+ Deposits, withdrawal.
+ Account statement (date, amount, balance) printing.
+ Data can be kept in memory (it doesn't need to be stored to a database or anything).

#### Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00