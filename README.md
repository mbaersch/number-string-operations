# Number & String Operations
**Custom Variable Template for Server-Side Google Tag Manager**

Set of Math and string manipulation operations 

[![Template Status](https://img.shields.io/badge/Community%20Template%20Gallery%20Status-published-green)](https://tagmanager.google.com/gallery/#/owners/mbaersch/templates/number-string-operations) ![Repo Size](https://img.shields.io/github/repo-size/mbaersch/number-string-operations) ![License](https://img.shields.io/github/license/mbaersch/number-string-operations)

---

## Change Notes
### 2022/06/23
New string method "split+extract": splits string at first parameter by second parameter delimiter and gets array item from split result by third parameter index

New result conversion type "Convert To String" 


### 2021/12/30
New methods in "Math":
- pow
- sqrt

New methods for strings:
- toFixed (variable decimals)
- toNumber (removes thousand separators and converts values with comma as decimal separators)
- replaceAll
- allows empty values as parameter 3 for replace / replaceAll

## What it does
Create a new variable using this template to...

- perform **calculations** with two variables
- use methods from **"Math"** to mutate variable values or
- manipulate **strings** from a single input variable (and additional parameters, depending on the string function)

## Usage
After selecting one of the three types an operation / a function can be picked from a drop down list. 

Depending on the operation, one up to three parameter values can be defined. 

- For calculations, the first and second parameter are used as operands. You can use variables or direct constant values for all parameter fields. 
- Math and string operations usually take the first parameter as input and the others are used as neccessary function parameters.

All parameters are transformed to the suitable format by the template.

### Formatting Results
In case of calculations or math operations you can pick a desired format for the result. This can be a string, rounded or truncated integer or a fixed value with two decimal digits.

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
String Functions | split.extract | first,second,third |  , |  1 | "first,second,third".split(",")[1] | "second"
