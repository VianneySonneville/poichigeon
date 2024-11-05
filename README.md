# poichigeon

[![Gem Version](https://badge.fury.io/rb/poichigeon.svg)](http://badge.fury.io/rb/poichigeon)

A library that automates notifications during crud

## Installation

Run:

    bundle add poichigeon

Or install it yourself as:

    $ gem install poichigeon

## Usage

run:

    rails g poichigeon:i_choose_you

this commande it's use for:
- generate migration for poichigeon to use skill meteore!
- generate configuration to use this

in route.rb
    get "poichigeon" => "poichigeon/poichigeon#fly"
  # mount Poichigeon::Engine, at: "/poichigeon"
 todo fix this
+ import controller js
+ import css
+ data conroller target = ...

in application.html.erb

+ import helper with: <%= poichigeon_bide %>

+ <%= javascript_include_tag 'poichigeon_controller' %>

cabler la decu

