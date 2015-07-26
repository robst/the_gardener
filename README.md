# TheGardener

TheGardener helps you to versionize your seed files. If you need to separate 
seedings, this gem could be helpfull for you.

TheGardener generates seed files filed under `db/seeds` and stores which seed 
allready be done. it's the same procedure like migrations.


## Installation

hm, yeah. just add this to your Gemfile:

```ruby
gem 'the_gardener', '~> 0.1.0'
```

And then execute:
```
  $ bundle
```
Or install it yourself as:
```
  $ gem install the_gardener
```

Now you just have to install the_gardener in your project:
```
  $ rails g the_gardener:install
```

and run your migrations.

## Usage

Ok, to create a seed file just run:

```
  $ rails g seed your_filename_for_your_seed
```

After this, you can put your code to the seedfile (filed under db/seeds). 
Just put some `Model.create` stuff there.

to run all your seed files just

```
  $ rake tg:seed
```

If there is some seed which throws an error, the task stopped and all seeds in 
this seedfile will be canceled

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
