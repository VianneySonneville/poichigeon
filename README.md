
# poichigeon
[![Gem Version](https://badge.fury.io/rb/poichigeon.svg)](http://badge.fury.io/rb/poichigeon)
A library that automates notifications during callback arround before and after:
 - save
 - validate
 - create
 - update
 - destroy
## Installation
Run:

    bundle add poichigeon

Or install it yourself as:

    gem install poichigeon

## Set up
run:

    rails g poichigeon:i_choose_you

this commande it's use for:

- generate migration for poichigeon to use skill meteore!

## How to use

 - todo complete

model:
 
		class  Post  <  ApplicationRecord
			validates  :title, presence:  true
			leer_before_validate
			leer_after_validate  "test", foo:  :bar
		end

view:

		<%= poichigeon_bide %>
