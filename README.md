# Trelora RPN Calculator
<img src="https://img.shields.io/badge/ruby%20-v2.4.1-brightgreen.svg" title="ruby-badge">

<img src="https://github.com/DanielMulitauopele/RPN-Calculator/blob/master/TRELORA-Logo-.png" title="trelora-logo" width="auto">

## Table of Contents

* [Description/Purpose](#descriptionpurpose)
* [Prompt](#prompt)
* [Requirements](#system-requirements)
* [Setup](#setup)
* [Testing](#testing)
* [Implementation](#implementation)
* [Dependencies](#dependencies)
* [Contributors](#contributors)

## Description/Purpose

This application was built to demonstrate my proficiency and ability to use Ruby, as well
as my understanding of OOP and DRY principles. As a candidate for the
software development position at Trelora, I hope this application demonstrates my aptitude for critical thinking, flexibility when working with new concepts, and a red-green-refactor approach to development. The prompt for this project is listed below.

## Prompt

In Reverse Polish Notation (RPN) the operators follow their operands. For instance, to add three and four, one would write `3 4 +` rather then `3 + 4`.  If there are multiple operations, the operator is given immediately after its second operand; so the expression written `3 - 4 + 5` in conventional infix notation would be written `3 4 - 5 +` in RPN: first subtract 4 from 3, then add 5 to that.

Example: The infix expression `5 + ((1 + 2) * 4) - 3` can be written down like this in RPN: `5 1 2 + 4 * + 3 -`

Instructions: Your calculator should handle:

- At least 4 numbers

- The four basic arithemetic operations `+, -, *, /`.

- Use `standard in` and `standard out` to accept and return data. Entering `q` should quit the application.

```
Sample:
1
2
+
= 3
2
*
= 6
4
-
= 2
q
goodbye
```

## System Requirements

This application requires ruby to be installed to your local
machine:

* [Ruby](https://www.ruby-lang.org/en/)

## Setup

To setup this application locally, take the following steps:

* Clone this repository down into a local directory of your choice.
* Navigate(cd) into RPN-Calculator
* Run bundle
* Run ruby start_calculator.rb to run the program

## Testing

To test this application locally, take the following steps:

* Run `ruby test/rpn_calculator_test.rb` to run the test suite
* All 7 tests should pass

## Implementation

### Initial Planning Process

From the start, my hope was to achieve a brute force solution. But in order to do this, I needed to verify exactly how the calculator worked. After reviewing the literature on RPN, it became clear that it functioned like a stack (first in, first out); add integer values and then remove them/replace them with new values. That made the solution simple: add the functionality to edit the stack, and assign those abilities to different operators. All that was left was to code it. When I approached the code, I knew it could be done relatively quickly using a larger if/else statement. Although it was ugly, I chose that route to get the challenge completed.

### Refactoring

Once the main functionality was there, I reviewed my code and saw what I had expected: it was ugly as all get out. So the next step was to refactor the functionality into code that was easily readable, followed Object Oriented Programming principles (Abstraction, Encapsulation, etc.), and enhanced the user experience. I added commands that let the user interact more freely with the program ('?' for a wikipedia link, 'i' for instructions). I also separated the main functionality of the calculator into its own class, using a runner file to initiate the calculator, as in my view, 'starting' the calculator is different in nature than computing calculations. I also divided all of the functionality into smaller, more specific methods that had a singular responsibility. One decision that I was proud of was choosing to save my methods as values in a hash, and making the user inputs correspond to symbol keys. I could have saved them as strings, but symbols, in general, have [faster look up times](https://stackoverflow.com/questions/8189416/why-use-symbols-as-hash-keys-in-ruby). I believe this decision may help other developers understand more easily what my code is trying to accomplish.

### Testing

In general, I try to write tests first. However, having written the brute force solution to begin with, going back to write tests with that big clump of code would have been more time-intensive than choosing to refactor first, and then writing unit tests that addressed those particular parts of code. In terms of TDD, this was not by the book, which is something I normally pride myself on. However, the reality of a deadline encourages short term solutions, and for me, this demonstrates my ability to adjust my coding style to what is necessary. 

I came to realize, however, that the majority of my methods did not need to be exposed outside of the class. More importantly, in order to truly unit test the small pieces of functionality, I would have needed to use an attr_accessor for numbers, to allow for 'write' access in my test file. This, in general, is a big no no. So I was faced with a decision: give write access to @numbers so that the operator methods can be adequately tested, thus demonstrating my ability in TDD? Or should I block access to @numbers in addition to those other methods, thus sealing off information but also leaving my test file looking like I've never written a test before. I chose the latter, and I would love to talk more about TDD if need be later on!

## Dependencies

**Development**

* [MiniTest](https://github.com/seattlerb/minitest)

## Contributors

* [Daniel Mulitauopele](https://github.com/DanielMulitauopele)
