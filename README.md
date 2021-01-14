# Bank-tech-test
### Setup
From command line:
~~~
git@github.com:Joshuamac2/Bank-tech-test.git
cd Bank-tech-test
bundle
~~~
To run test:
```
rspec
```
### Requirements

- You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

###Acceptance criteria

`Given` a client makes a deposit of 1000 on 10-01-2012
`And` a deposit of 2000 on 13-01-2012
`And` a withdrawal of 500 on 14-01-2012
`When` she prints her bank statement
`Then` she would see
~~~
date || credit || debit || balance
14/01/2020 || || 500.00 || 2500.00
13/01/2020 || 2000.00 || || 3000.00
10/01/2020 || 1000.00 || || 1000.00
~~~

#User stories
~~~
As a user
So that I can protect my savings
I would like to create a bank account
~~~

~~~
As a user
So that I can store my funds
I would like to deposit into my bank account
~~~

~~~
As a user
So that I can withdraw my funds
I would like to withdraw from my bank account
~~~

~~~
As a user
So that I can see my transactions
I would like to see transactions starting with most recent
~~~

## Diagram

| Account class      |  |  Transaction class|
| :---        |    :----:   |          ---: |
| @balance = 0|             | @amount = amount|
| @transactions = []|       | @account = account|
|    |            ---> |@timestamp = Time.new|
|       |                <---  | |
| deposit ()        |             |          blance |
| withdraw ()     |             | formate   |
| print_statement   |             |       |

### IRB
```
irb -r ./lib/account.rb -r ./lib/transaction
2.7.0 :001 > account = Account.new
2.7.0 :002 > account.deposit(1000.00)
 => [#<Transaction:0x00007fe6d71b0ba0 @amount=1000.0, @account=#<Account:0x00007fe6d79be108 @balance=1000.0, @transactions=[...]>, @timestamp="14/01/2021">]
2.7.0 :003 > account.deposit(2000.00)
 => [#<Transaction:0x00007fe6d71b0ba0 @amount=1000.0, @account=#<Account:0x00007fe6d79be108 @balance=3000.0, @transactions=[...]>, @timestamp="14/01/2021">, #<Transaction:0x00007fe6d719a530 @amount=2000.0, @account=#<Account:0x00007fe6d79be108 @balance=3000.0, @transactions=[...]>, @timestamp="14/01/2021">]
2.7.0 :004 > account.withdraw(500.00)
 => [#<Transaction:0x00007fe6d71b0ba0 @amount=1000.0, @account=#<Account:0x00007fe6d79be108 @balance=2500.0, @transactions=[...]>, @timestamp="14/01/2021">, #<Transaction:0x00007fe6d719a530 @amount=2000.0, @account=#<Account:0x00007fe6d79be108 @balance=2500.0, @transactions=[...]>, @timestamp="14/01/2021">, #<Transaction:0x00007fe6d78f2da0 @amount=-500.0, @account=#<Account:0x00007fe6d79be108 @balance=2500.0, @transactions=[...]>, @timestamp="14/01/2021">]
2.7.0 :005 > account.print_statement
date || credit || debit || balance
14/01/2021||  || 500.0  ||  2500.0
14/01/2021|| 2000.0 ||  ||  3000.0
14/01/2021|| 1000.0 ||  ||  1000.0
```

Tech
- ruby
- rspec
- simple-cov
- rubocop
