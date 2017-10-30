# Driftrock Api

## Scenario 

Create a script that can be run from the command line and can answer the questions listed below.
The script accepts one parameter to specify which question it will answer and in some cases an
optional argument. The script will print the answer to the console output.

`ruby app.rb COMMAND PARAMETERS`

The script should implement these commands:

total_spend [EMAIL]: What is the total spend of the user with this email address [EMAIL]?

average_spend [EMAIL]: What is the average spend of the user with this email address [EMAIL]?

most_loyal: What is the email address of the most loyal user (most purchases)?

highest_value: What is the email address of the highest value user?

most_sold: What is the name of the most sold item?

## How to use

To install open your command line and enter:

`$ git clone https://github.com/Hempy49/driftrock_api.git`

`$ cd driftrock_api`

`$ bundle install` - install required gems

`$ rspec -fd` - run the tests

To run the script open your command line and enter:

`$ cd driftrock_api`

`$ ruby app.rb total_spend [EMAIL]`

`$ ruby app.rb average_spend [EMAIL]`

`$ ruby app.rb most_loyal`

## Next steps 

I ran out of time to finish all required methods. The total_spend and average_spend work as specified, but the most_loyal currently only returns the user_id and not the user_email as requested. With more time I would complete the missing methods (highest_value, most_sold) and work on these improvements:

Data extraction: 
Currently the api class only captures a set pagination (?per_page=1000&page=1) for user and purchase entries. This is highly problematic as it risks not pulling in a complete set of data for each endpoint. With more time I would refactor these methods to account for this.

Refactoring: 
There is a fair bit of repetition amongst methods, especially in the controller. This could be refactored to make the controller slimmer. The user class is also quite large and could be separated into two different models, one responsible for methods specific to certain users and one for overall stats e.g. most_loyal, highest_value, most_sold.

Tests: 
I had some success using web mock to stub get requests in my api_spec. It took me a fair while to find the correct syntax for this so my tests are not as well written and DRY as I would like. Removing magic numbers and adding helpers would improve my specs.  




