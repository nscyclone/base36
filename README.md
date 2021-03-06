# Base36 [![Version](https://img.shields.io/hexpm/v/base36.svg?style=flat-square)](https://hex.pm/packages/base36)[![Build Status](https://travis-ci.org/nscyclone/base36.svg?branch=master)](https://travis-ci.org/nscyclone/base36)[![License](https://img.shields.io/hexpm/l/base36.svg?style=flat-square)](https://github.com/nscyclone/base36/blob/master/LICENSE)

Base36 encoder/decoder in Elixir. Based on [custom base](https://github.com/igas/custom_base).

## Usage

### Encode

```
iex> Base36.encode(13)
"D"

iex> Base36.encode(31)
"V"

iex> Base36.encode(274)
"7M"
```

### Decode!

```
iex> Base36.decode!("95")
329

iex> Base36.decode!("TETRAPYRROLE")
3871237878461204546

iex> Base36.decode!("Кириллица")
** (ArgumentError) non-alphabet digit found: а
    (base36) lib/base36.ex:2: Base36.decode_char/1
    (base36) lib/base36.ex:2: Base36.decode/2
```

### Decode

```
iex> Base36.decode("42")
{:ok, 146}

iex> Base36.decode("ERLANG")
{:ok, 892869676}

iex> Base36.decode("lower")
:error
```

# [License](https://github.com/nscyclone/base36/blob/master/LICENSE)

Released under the MIT License.
