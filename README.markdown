# Vk: API wrapper for vk.com

Vk is a wrapper for vk.com API

## Project links

* [Documentation](http://rubydoc.info/gems/vk)
* [Source](https://github.com/alsemyonov/vk)
* [Issues](https://github.com/alsemyonov/vk/issues)
* [Wiki](https://github.com/alsemyonov/vk/wiki)
* [![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/alsemyonov/vk)
* [![Build Status](https://travis-ci.org/alsemyonov/vk.png?branch=master)](https://travis-ci.org/alsemyonov/vk)

## Installation

    gem install vk

## Usage

### Initialization

```ruby
    Vk.app_id = 12345
    Vk.app_secret = 'secret'
```

### Basic usage

Simple request. Docs ad {Vk::Request}

```ruby
    vk = Vk.request
    profiles = vk.request 'getProfiles', uids: 12345
    puts profiles # [{uid: 12345, first_name: 'Ivan', last_name: 'Ivanov'}]
```

### Usage with DSL

View methods list at {Vk::DSL}.

```ruby
    Vk.dsl!
    vk = Vk.request
    profiles = vk.get_profiles([123, 456, 789], fields: %w('has_mobile'))
    puts profiles # [{uid: 1234, ..., has_mobile: 1}]
```

### Usage with object oriented DSL

Currently implemented classes: {Vk::User}, {Vk::City}, {Vk::Country}, {Vk::Post}.

```ruby
    user = Vk::User.find 12345
    user                    # #<Vk::User:12345 @attributes={first_name: 'Ivan', last_name: 'Ivanov', uid: 12345}>
    user.first_name         # 'Ivan'
    user.last_name          # 'Ivanov'
    user.name               # 'Ivan Ivanov'
    user.city               # #<Vk::City:1 @attributes={name: 'Moscow', cid: 1}>
    user.country            # #<Vk::Country:1 @attributes={name: 'Russia', cid: 1}>
    user.friends            # [#<Vk::User:1 @attributes={first_name: "Pavel", last_name: "Durov", uid: 1}>, ...]
    user.friends.first.city # #<Vk::City:1 @attributes={name: 'Moscow', cid: 1}>
    user.posts.first        # #<Vk::Post:1_123 @attributes={text: 'Preved!11'}>
```

## License

MIT License. © [Alexander Semyonov](http://al.semyonov.us/), <al@semyonov.us>, 2011-2013
