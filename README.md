# review-4

Company makes academic maths papers easier to read
Scans through maths papers looking for sums; extracts sums as strings, evaluates sums, spits out original sum as well as the answer

|Input| Output|
|---|---|
| "1+1" | ["1 + 1", 2] |
|"1*1" | ["1 * 1", 1] |
|"1-1" | ["1 - 1", 0] |
|"1*1-1" | ["1 * 1 - 1", 0] |
|"1" | ["1", 1] |


operators: can handle any of +, -, *, /
