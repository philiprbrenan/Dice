![Test](https://github.com/philiprbrenan/Dice/workflows/Test/badge.svg)

# Name

__Dice__ - Throw some dice and analyze the results

# Synopsis

Dice - Throw a specified number of dice with a specified number of dots on them and analyze the results looking for the most dice showing the same value and for the longest consecutive sequence.

# Description

For example:

```
  perl -Ilib -M"Dice" -e"say STDERR Dice::new(6, 6)->throw()->analyze()->analysis;"
```
produces:
```

  Three of a kind
  Two in a row from three to four
```

## Dice
Throw several dice and analyze the results.

```
new($dice, $dots)
```
Create a new dice ready to throw.

```
     Parameter  Description
  1  $dice      The number of dice to throw
  2  $dots      Optional number of dots on the dice
```

### Example:

```
    my $d = Dice::new(10, 6);  # 𝗘𝘅𝗮𝗺𝗽𝗹𝗲

       $d->fix(qw(4 2 6 4 3 6 1 4 4 6));
       $d->analyze;
    is_deeply $d->analysis, <<END;
  Four of a kind
  Four in a row from one to four
  END
  }

  if (1) {

    my $d = Dice::new(10, 6);  # 𝗘𝘅𝗮𝗺𝗽𝗹𝗲

       $d->throw();
    ok $d->result->@* == 10;
  }
```

## throw($dice)

Perform a throw of the dice.

```
     Parameter  Description
  1  $dice      Dice thrower
```

### Example:

```
    my $d = Dice::new(10, 6);

       $d->throw();  # 𝗘𝘅𝗮𝗺𝗽𝗹𝗲

    ok $d->result->@* == 10;
  }
```

## fix($dice, @values)

Perform a fixed throw of the dice - useful for testing because we use a random number generator to perform the actual throw.

```
     Parameter  Description
  1  $dice      Dice thrower
  2  @values    Values of dice
```

### Example:

```
    my $d = Dice::new(10, 6);

       $d->fix(qw(4 2 6 4 3 6 1 4 4 6));  # 𝗘𝘅𝗮𝗺𝗽𝗹𝗲

       $d->analyze;
    is_deeply $d->analysis, <<END;
  Four of a kind
  Four in a row from one to four
  END
  }

  if (1) {
    my $d = Dice::new(10, 6);
       $d->throw();
    ok $d->result->@* == 10;
  }
```

## analyze($dice)

Analyze the result of the last throw. Indicate whether several dice show the same value and on the length of the longest consecutive sequence.

```
     Parameter  Description
  1  $dice      Dice thrower
```
### Example:

```
    my $d = Dice::new(10, 6);
       $d->fix(qw(4 2 6 4 3 6 1 4 4 6));

       $d->analyze;  # 𝗘𝘅𝗮𝗺𝗽𝗹𝗲

    is_deeply $d->analysis, <<END;
  Four of a kind
  Four in a row from one to four
  END
  }

  if (1) {
    my $d = Dice::new(10, 6);
       $d->throw();
    ok $d->result->@* == 10;
  }
```

## Hash Definitions
### Dice Definition
#### Dice object

##### Output fields
__analysis__
Analysis of last throw

__dots__
Number of dots on dice

__number__
Number of dice

__result__
Last throw result

__throws__
Number of throws

## Private Methods

### numberToWord($number)

Convert a number in the range 0..10 to a [word](https://en.wikipedia.org/wiki/Doc_(computing)) else return the number as is
```
     Parameter  Description
  1  $number    Number
```

# Index
1 analyze - Analyze the result of the last throw.

2 fix - Perform a fixed throw of the dice - useful for testing because we use a random number generator to perform the actual throw.

3 new - Create a new dice ready to throw.

4 numberToWord - Convert a number in the range 0.

5 throw - Perform a throw of the dice.

# Installation
This [module](https://en.wikipedia.org/wiki/Modular_programming) is written in 100% Pure Perl and, thus, it is easy to read, comprehend, use, modify and [install](https://en.wikipedia.org/wiki/Installation_(computer_programs)) via [CPAN](https://metacpan.org/author/PRBRENAN): ```
  sudo cpan install Dice
Author
philiprbrenan@gmail.com

http://www.appaapps.com
```
# Copyright

Copyright (c) 2016-2022 Philip R Brenan.

This [module](https://en.wikipedia.org/wiki/Modular_programming) is free software. It may be used, redistributed and/or modified under the same terms as Perl itself.
