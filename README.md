# Practice with Array Integers

## Introduction

In this lab, we will be practicing some of the common ways to access and
manipulate information from an array.

## Learning Goals

- Access values in arrays
- Perform operations on arrays

## Perform Operations on Arrays

This lab focuses on arrays of integers but involves a few concepts from algebra.
Just as a brief refresher on some of these concepts:

> To square a number, multiple the number by itself. In mathematical notation,
> this is written using a exponent: 5<sup>2</sup> == 5 x 5 == 25

> To cube a number, multiple a number by itself **two times**. 5<sup>3</sup> ==
> 5 x 5 x 5 == 125

> To sum a set of numbers, add them together

> To average a set of numbers, get their sum and divide by how many numbers are
> in the set

Your task is to write a set of methods that take in an _any_ array of integers,
perform a math operation on each integer and return a _new_ array. In
`lib/array_practice.rb`, an example array is provided:

```ruby
array_of_integers = *0..50
# => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9,  ...  47, 48, 49]
```

> This method of array creation uses a 'splat' operator on a [range]. This is a
> shorthand method for creating and assigning an array of integers

Feel free to modify this array or use your own array to test and write these
methods. Comments are provided in `lib/array_practice.rb` for each method you
will need to write. Run `learn` to test your solutions.

## Conclusion

There are many ways to manipulate arrays of integers. These operations are
common enough that some of the methods you've written are actually built into
Ruby as class methods. Being able to access and modify array data

## Resources

- [Arrays]

[arrays]: https://ruby-doc.org/core-1.9.3/Array.html
[range]: https://ruby-doc.org/core-2.2.0/Range.html
