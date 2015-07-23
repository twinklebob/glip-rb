# Glip

Library that will allow you to post messages to [glip](https://glip.com) room.

No API to read room history at the moment.

## Installation

Add this line to your application's Gemfile:

    gem 'glip-rb'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install glip-rb

## Usage

Go to your room integrations page, search for "HTTP POST" integration, make
sure you have switched it **on**, use Room ID provided at that page instead of
`room_id` in instructions below:

    require 'glip'

    room = Glip::Room.new("room_id")
    room.post("Andrei", "Hello **world**", {:color => "green", :renderer => "markdown"})

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Say thanks

Feel free to buy me a nice cup of tea or something. I accept tips through http://CyberneticDave.tip.me
