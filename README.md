Explanation: In Reverse Polish Notation (RPN) the operators follow their operands; for instance, to add three and four one would write `3 4 +` rather then `3 + 4`.  If there are multiple orperations, the operator is given immediately after its second operand; so the expression written `3 - 4 + 5` in conventional infix notation would be written `3 4 - 5 +` in RPN: first subtract 4 from 3, then add 5 to that.

Example: The infix expression `5 + ((1 + 2) * 4) - 3` can be written down like this in RPN: 5 1 2 + 4 * + 3 -

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
