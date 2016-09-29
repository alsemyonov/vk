# Vk: API wrapper for vk.com

Vk is a wrapper for vk.com API

## Project links

* [Sources](https://github.com/alsemyonov/vk)
* [Documentation](http://www.rubydoc.info/gems/vk) ([edge](http://www.rubydoc.info/github/alsemyonov/vk))
* [Issue Tracker](https://github.com/alsemyonov/vk/issues)
* [Wiki](https://github.com/alsemyonov/vk/wiki)
* [![Code Climate](https://codeclimate.com/github/alsemyonov/vk/badges/gpa.svg)](https://codeclimate.com/github/alsemyonov/vk)
* [![Test Coverage](https://codeclimate.com/github/alsemyonov/vk/badges/coverage.svg)](https://codeclimate.com/github/alsemyonov/vk/coverage)
* [![Build Status](https://travis-ci.org/alsemyonov/vk.png?branch=master)](http://travis-ci.org/alsemyonov/vk)
* [![Dependency Status](https://gemnasium.com/alsemyonov/vk.png)](https://gemnasium.com/alsemyonov/vk)

## Installation

```bash
gem install vk
```

## Usage

### Initialization

```ruby
Vk.app_id = 12345
Vk.app_secret = 'secret'
```

### Basic usage

Simple request. Docs ad {Vk::Client}

```ruby
vk = Vk.client
profiles = vk.request 'users.get', user_ids: 12345
puts profiles #=> {"response"=>[{"id"=>12345, "first_name"=>"Виталий", "last_name"=>"Михайлов"}]}
```

### Usage with DSL

View methods list at {Vk::DSL}.

```ruby
vk = Vk.client
profiles = vk.users.get(user_ids: [123, 456, 789], fields: %w(has_mobile))
p profiles.response # => [
                    #       #<Vk::API::Users::UserXtrCounters id=123 first_name="DELETED" last_name="" deactivated="deleted" hidden=nil sex=nil screen_name=nil photo_50=nil photo_100=nil online=nil nickname=nil maiden_name=nil domain=nil bdate=nil city=nil country=nil timezone=nil photo_200=nil photo_max=nil photo_200_orig=nil photo_400_orig=nil photo_max_orig=nil photo_id=nil has_photo=nil has_mobile=nil is_friend=nil friend_status=nil wall_comments=nil can_post=nil can_see_all_posts=nil can_see_audio=nil can_write_private_message=nil can_send_friend_request=nil mobile_phone=nil home_phone=nil skype=nil facebook=nil facebook_name=nil twitter=nil livejournal=nil instagram=nil site=nil status_audio=nil status=nil activity=nil last_seen=nil exports=nil crop_photo=nil verified=nil followers_count=nil blacklisted=nil blacklisted_by_me=nil is_favorite=nil is_hidden_from_feed=nil common_count=nil occupation=nil career=nil military=nil university=nil university_name=nil faculty=nil faculty_name=nil graduation=nil education_form=nil education_status=nil home_town=nil relation=nil relation_partner=nil personal=nil interests=nil music=nil activities=nil movies=nil tv=nil books=nil games=nil universities=nil schools=nil about=nil relatives=nil quotes=nil counters=nil>,
                    #       #<Vk::API::Users::UserXtrCounters id=456 first_name="DELETED" last_name="" deactivated="deleted" hidden=nil sex=nil screen_name=nil photo_50=nil photo_100=nil online=nil nickname=nil maiden_name=nil domain=nil bdate=nil city=nil country=nil timezone=nil photo_200=nil photo_max=nil photo_200_orig=nil photo_400_orig=nil photo_max_orig=nil photo_id=nil has_photo=nil has_mobile=nil is_friend=nil friend_status=nil wall_comments=nil can_post=nil can_see_all_posts=nil can_see_audio=nil can_write_private_message=nil can_send_friend_request=nil mobile_phone=nil home_phone=nil skype=nil facebook=nil facebook_name=nil twitter=nil livejournal=nil instagram=nil site=nil status_audio=nil status=nil activity=nil last_seen=nil exports=nil crop_photo=nil verified=nil followers_count=nil blacklisted=nil blacklisted_by_me=nil is_favorite=nil is_hidden_from_feed=nil common_count=nil occupation=nil career=nil military=nil university=nil university_name=nil faculty=nil faculty_name=nil graduation=nil education_form=nil education_status=nil home_town=nil relation=nil relation_partner=nil personal=nil interests=nil music=nil activities=nil movies=nil tv=nil books=nil games=nil universities=nil schools=nil about=nil relatives=nil quotes=nil counters=nil>,
                    #       #<Vk::API::Users::UserXtrCounters id=789 first_name="Ольга" last_name="Серебренникова" deactivated=nil hidden=nil sex=nil screen_name=nil photo_50=nil photo_100=nil online=nil nickname=nil maiden_name=nil domain=nil bdate=nil city=nil country=nil timezone=nil photo_200=nil photo_max=nil photo_200_orig=nil photo_400_orig=nil photo_max_orig=nil photo_id=nil has_photo=nil has_mobile=1 is_friend=nil friend_status=nil wall_comments=nil can_post=nil can_see_all_posts=nil can_see_audio=nil can_write_private_message=nil can_send_friend_request=nil mobile_phone=nil home_phone=nil skype=nil facebook=nil facebook_name=nil twitter=nil livejournal=nil instagram=nil site=nil status_audio=nil status=nil activity=nil last_seen=nil exports=nil crop_photo=nil verified=nil followers_count=nil blacklisted=nil blacklisted_by_me=nil is_favorite=nil is_hidden_from_feed=nil common_count=nil occupation=nil career=nil military=nil university=nil university_name=nil faculty=nil faculty_name=nil graduation=nil education_form=nil education_status=nil home_town=nil relation=nil relation_partner=nil personal=nil interests=nil music=nil activities=nil movies=nil tv=nil books=nil games=nil universities=nil schools=nil about=nil relatives=nil quotes=nil counters=nil>
                    #    ]
```

### Usage with object oriented DSL

Currently implemented classes: {Vk::API::Users::User}, {Vk::API::Database::City}, {Vk::API::Database::City}, {Vk::API::Wall::Wallpost} and many more. See `Vk::Schema::Object` subclasses [at rubydoc.info](http://www.rubydoc.info/gems/vk/Vk/Schema/Object.html).

```ruby
user = Vk.client.users.get(user_ids: 34160, fields: %w(
  nickname screen_name sex bdate city country timezone photo photo_medium photo_big has_mobile contacts education online counters relation last_seen activity can_write_private_message can_see_all_posts can_post universities city)).response.first
                        # => #<Vk::API::Users::UserXtrCounters id=34160 first_name="Александр" last_name="Семёнов" deactivated=nil hidden=nil sex=2 screen_name="alsemyonov" photo_50=nil photo_100=nil online=0 nickname="«Алекс»" maiden_name=nil domain=nil bdate="3.6.1988" city=#<Vk::API::Base::Object id=2 title="Санкт-Петербург"> country=#<Vk::API::Base::Country id=1 title="Россия"> timezone=nil photo_200=nil photo_max=nil photo_200_orig=nil photo_400_orig=nil photo_max_orig=nil photo_id=nil has_photo=nil has_mobile=1 is_friend=nil friend_status=nil wall_comments=nil can_post=0 can_see_all_posts=0 can_see_audio=nil can_write_private_message=1 can_send_friend_request=nil mobile_phone=nil home_phone=nil skype=nil facebook=nil facebook_name=nil twitter=nil livejournal=nil instagram=nil site=nil status_audio=nil status=nil activity="»Russland, wach auf!«" last_seen=#<Vk::API::Users::LastSeen time=1475098720 platform=7> exports=nil crop_photo=nil verified=nil followers_count=nil blacklisted=nil blacklisted_by_me=nil is_favorite=nil is_hidden_from_feed=nil common_count=nil occupation=nil career=nil military=nil university=nil university_name=nil faculty=nil faculty_name=nil graduation=nil education_form=nil education_status=nil home_town=nil relation=nil relation_partner=nil personal=nil interests=nil music=nil activities=nil movies=nil tv=nil books=nil games=nil universities=nil schools=nil about=nil relatives=nil quotes=nil counters=#<Vk::API::Users::UserCounters albums=23 videos=77 audios=0 notes=28 photos=784 groups=nil gifts=nil friends=nil online_friends=nil user_photos=nil user_videos=nil followers=531 subscriptions=nil pages=nil>>
user.first_name         # => 'Александр'
user.last_name          # => 'Семёнов'
user.city               # => #<Vk::API::Base::Object id=2 title="Санкт-Петербург">
user.country            # => #<Vk::API::Base::Country id=1 title="Россия">
user.site               # => "https://al.semyonov.us/"
```

## License
 
© [Alex Semyonov](https://al.semyonov.us/), <alex@semyonov.us>, 2011-2016, MIT License
