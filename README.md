# Number & String Operations
**Custom Variable Template for Server-Side Google Tag Manager**

Set of Math and string manipulation operations 

[![Template Status](https://img.shields.io/badge/Community%20Template%20Gallery%20Status-published-green)](https://tagmanager.google.com/gallery/#/owners/mbaersch/templates/number-string-operations) ![Repo Size](https://img.shields.io/github/repo-size/mbaersch/number-string-operations) ![License](https://img.shields.io/github/license/mbaersch/number-string-operations)

---

## Change Notes

### 2025/05/28
New boolean operations (placed in the *"calc"* section): AND, OR, NOT
Results of *"string"* operations can be parsed to integer or fixed 
Results of the new boolean operations can be parsed (converted) to an integer "0" or "1"

### 2024/05/25
New string methods "JSON.parse" & "JSON.stringify" for converting from / to objects

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

Type | Operation / Function | Parameter 1 | Parameter 2 | Parameter 3 | JavaScript Equivalent | Result
---- | ---- | ---- | ---- | ---- | ---- | ----
Calculate | add | 2 | 5.5 | -unused- | 2 + 5.5 | 7.5
Calculate | subtract | 5.5 | 2 | -unused- | 5.5 - 2 | 3.5
Calculate | multiply | 2 | 5.5 | -unused- | 2 * 5.5 | 11
Calculate | divide | 10 | 2 | -unused- | 10 / 2 | 5
Calculate | AND (Boolean) | true[^1] | false[^1]  | -unused- | true && false | false
Calculate | OR (Boolean) | true[^1] | false[^1] | -unused- | true || false | true
Calculate | NOT (Boolean) | true[^1] | -unused- | -unused- | !true | false
Math Methods | abs | -42.6 | -unused- | -unused- | Math.abs(-42.6) | 42.6
Math Methods | ceil | 42.6 | -unused- | -unused- | Math.ceil(42.6) | 43
Math Methods | floor | 42.6 | -unused- | -unused- | Math.floor(42.6) | 42
Math Methods | max | 42.6 | 50 | -unused- | Math.max(42.6, 50) | 50
Math Methods | min | 42.6 | 2 | -unused- | Math.min(42.6, 2) | 2
Math Methods | round | 42.6 | -unused- | -unused- | Math.round(42.6) | 43
Math Methods | trunc | 42.6 | -unused- | -unused- | Math.floor(42.6) | 42
Math Methods | pow | 2 | 3 | -unused- | Math.pow(2, 3) | 8
Math Methods | sqrt | 9 | -unused- | -unused- | Math.sqrt(9) | 3
String Functions | indexOf | Frodo | o | -unused- | "Frodo".indexOf('o') | 2
String Functions | lastIndexOf | Frodo | o | -unused- | "Frodo".lastIndexOf('o') | 4
String Functions | split | first,second,third | , | -unused- | "first,second,third".split(',') | ["first", "second", "third"]
String Functions | splitSpecial | first,second,third | , | 1 | "first,second,third".split(',')[1] | "second"
String Functions | toLowerCase | Frodo | -unused- | -unused- | "Frodo".toLowerCase() | "frodo"
String Functions | toUpperCase | Frodo | -unused- | -unused- | "Frodo".toUpperCase() | "FRODO"
String Functions | replace | Frodo | o | a | "Frodo".replace('o', 'a') | "Frado"
String Functions | replaceAll | Frodo | o | a | replaceAll("Frodo", 'o', 'a') | "Frada"
String Functions | slice | Frodo | 1 | 3 | "Frodo".slice(1, 3) | "ro"
String Functions | substr | Frodo | 2 | 3 | "Frodo".substring(2, 5) | "odo"
String Functions | substring | Frodo | 2 | 3 | "Frodo".substring(2, 3) | "o"
String Functions | toFixed | 3.14159 | 2 | -unused- | (3.14159).toFixed(2) | 3.14
String Functions | toNumber | 1,234.56 | -unused- | -unused- | +(1,234.56) | 1234.56
String Functions | match | Frodo | /o/ | -unused- | "Frodo".match(/o/) | ["o"]
String Functions | sha256 | Hello, World! | -unused- | -unused- | sha256Sync("Hello, World!") | "dffd6021bb2bd5b0af676290809ec3a53191dd81c7f70a4b28688a362182986f"
String Functions | base64 | Hello, World! | -unused- | -unused- | toBase64("Hello, World!") | "SGVsbG8sIFdvcmxkIQ=="
String Functions | jstringify | {name: "Frodo", age: 50} | -unused- | -unused- | JSON.stringify({name: "Frodo", age: 50}) | '{"name":"Frodo","age":50}'
String Functions | jparse | '{"name":"Frodo","age":50}' | -unused- | -unused- | JSON.parse('{"name":"Frodo","age":50}') | {name: "Frodo", age: 50}

[^1]: true, "true", "TRUE", "1", or 1 will be interpreted as *true*