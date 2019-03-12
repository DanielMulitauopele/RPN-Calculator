# Trelora RPN Calculator

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

From the start, my hope was to achieve a brute force solution. But in order to do this, I needed to verify exactly how the calculator worked. After reviewing the literature on RPN, it became clear that it functioned like a stack; add integer values and then remove them/replace them with new values. That made the solution simple: add the functionality to edit the stack, and assign those abilities to different operators. All that was left was to code it. When I approached the code, I knew it could be done relatively quickly using a larger if/else statement. Although it was ugly, I chose that route to get the challenge completed.

### Refactoring



## Dependencies

**Development**

* [SimpleCov](https://github.com/colszowka/simplecov)
* [MiniTest](https://github.com/seattlerb/minitest)

## Contributors

* [Daniel Mulitauopele](https://github.com/DanielMulitauopele)
