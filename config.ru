require "rubygems"
require "bundler"
Bundler.setup
Bundler.require

require 'deck/rack_static_patch'
require 'deck/rack_app'
run Deck::RackApp.build('slides.md')

