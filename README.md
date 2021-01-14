# Bank-tech-test

##Specification

###Requirements

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
