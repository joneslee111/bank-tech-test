# Bank Tech Test
A simple app that allows the user to deposit money, withdraw money and can print out a bank statement of an account, used in irb.

## Installation
+ Clone into local repository:
```
git clone https://github.com/joneslee111/bank-tech-test.git
```
+ Go to the project folder:
```
cd bank-tech-test
```
+ Install the dependencies:
```
bundle install
```
## Running The Program
```
irb -r './lib/account.rb'
```
+ To create a new account:
```
account = Account.new
```
+ To deposit into the account:
```
account.deposit(325)
```
+ To withdraw:
```
account.withdraw(200)
```
+ To view bank statement:
```
account.bank_statement
```
### Example
<img width="983" alt="Screenshot 2021-04-08 at 15 08 36" src="https://user-images.githubusercontent.com/21693444/114041611-98b07580-987c-11eb-9348-6ead591db1cb.png">

## Running The Tests
+ Whilst in the project directory:
```
rspec
```
### Example
<img width="983" alt="Screenshot 2021-04-08 at 15 24 05" src="https://user-images.githubusercontent.com/21693444/114043745-7881b600-987e-11eb-9a69-ce70dd70636f.png">

## Planning
### User Stories
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
### Objects and Messages
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

### Sequence Diagram
![Screenshot 2021-04-07 at 17 38 32](https://user-images.githubusercontent.com/21693444/113902845-3d24b000-97c8-11eb-86b9-b099da56bd62.png)

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
