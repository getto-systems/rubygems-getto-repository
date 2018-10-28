# getto-repository

[rubygems: getto-repository](https://rubygems.org/gems/getto-repository)

Repository helper

```ruby
require "getto/repository/page"

Getto::Repository::Page.new(count:   0, limit: 100).pages # => 0
Getto::Repository::Page.new(count:   1, limit: 100).pages # => 1
Getto::Repository::Page.new(count:  50, limit: 100).pages # => 1
Getto::Repository::Page.new(count: 100, limit: 100).pages # => 1
Getto::Repository::Page.new(count: 101, limit: 100).pages # => 2
Getto::Repository::Page.new(count: 200, limit: 100).pages # => 2
Getto::Repository::Page.new(count: 202, limit: 100).pages # => 3
```


###### Table of Contents

- [Requirements](#Requirements)
- [Usage](#Usage)
- [License](#License)

<a id="Requirements"></a>
## Requirements

- developed on ruby: 2.5.1


<a id="Usage"></a>
## Usage

## Install

Add this line to your application's Gemfile:

```ruby
gem 'getto-repository'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install getto-repository
```


<a id="License"></a>
## License

getto/repository is licensed under the [MIT](LICENSE) license.

Copyright &copy; since 2018 shun@getto.systems
