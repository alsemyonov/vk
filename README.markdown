# Vk: API wrapper for vk.com

Vk is a wrapper for vk.com API

## Installation

    $ gem install vk

## Usage

### Initialization

    Vk.app_id = 12345
    Vk.app_secret = 'secret'

### Basic usage

    vk = Vk.request
    profiles = vk.request 'getProfiles', uids: 12345
    puts profiles # [{uid: 12345, first_name: 'Ivan', last_name: 'Ivanov'}]

### Usage with DSL:

    Vk.dsl!
    vk = Vk.request
    profiles = vk.get_profiles([123, 456, 789], fields: %w('has_mobile'))
    puts profiles # [{uid: 1234, ..., has_mobile: 1}]

## License

MIT License. ©  [Alexander Semyonov](http://al.semyonov.us/),  <al@semyonov.us>, 2011
