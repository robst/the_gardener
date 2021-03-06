# TheGardener

TheGardener helps you to versionize your seed files. If you need to separate
seedings from migrations, this gem could be helpfull for you.

TheGardener generates simple seed files filed under `db/seeds` and stores which
seed allready be executed. it's the same procedure like migrations.


## Installation

hm, yeah. just add this to your Gemfile:

```ruby
gem 'the_gardener', '~> 0.2.0'
```

And then execute:
```
  $ bundle
```

Now you just have to install the_gardener in your project:
```
  $ rails g the_gardener:install
```

and run your migrations.

```
  $ rake db:migrate
```

## Usage

Ok, to create a seed file just run:

```
  $ rails g seed create_new_entries
```

This will create a seedfile like `20160728211737_create_new_entries` (filed under db/seeds).
Just put some `Model.create` or other data manipulation stuff there.

to run all your seed files just

```
  $ rake tg:seed
```

If there is some seed which throws an error, the task stopped and all seeds in
this seedfile will be canceled. So fix your seed and run it again.

## The MIT License (MIT)

Copyright (c) 2015  [Robert Starke](robertst81+github@gmail.com)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

## Questions?

If you have further questions, code smells, hints or a beer, just contact me :)

## Contributing

1. Fork it ( https://github.com/robst/the_gardener/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
