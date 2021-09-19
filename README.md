# number-string-operations
Set of Math and string manipulation operations (Custom Variable Template for Server-Side Google Tag Manager)

## What it does
Create a new variable using this template to...

- perform **calculations** with two variables
- use methods from **"Math"** to mutate variable values or
- perform **string operstions** in a single input variable

## Usage
After selecting one of the three types an operation / acfunction can be picked from a drop down list. 

Depending on the operation to perform, one up to three parameter values can be defined. 

- For calculations, the first and second parameter are used as operands. You can use variables or direct constant values for all parameter fields. 
- Math and string operations usually take the first parameter as input and the others are used as neccessary function parameters.

### Formatting Results
In case of calculations or math operations you can pick a desired format for the result. This can be a rounded or truncated integer or a fixed value with two decimal digits.

## Examples

Type | Operation / Function | Parameter 1 |  Parameter 2 |  Parameter 3 | JavaScript Equivalent | Result 
---- | ---- | ---- | ---- | ---- | ---- | ----
Caculate | add | 2 |  5.5 |  -unused- | 2 + 5.5 | 7.5 
Math Methods | ceil | 42.6 |  -unused- |  -unused- | Math.ceil(42.6) | 43
Math Methods | min | 42.6 |  2 |  -unused- | Math.min(42.6, 2) | 2
String Functions | indexOf | Frodo |  o |  -unused- | "Frodo".indexOf('o') | 2
String Functions | lastIndexOf | Frodo |  o |  -unused- | "Frodo".indexOf('o') | 4
String Functions | toUpperCase | Frodo |  -unused- |  -unused- | "Frodo".toUpperCase() | "FRODO"
String Functions | substr | Frodo |  2 |  3 | "Frodo".substr(2,3) | "odo"
String Functions | substring | Frodo |  2 |  3 | "Frodo".substr(2,3) | "o"




