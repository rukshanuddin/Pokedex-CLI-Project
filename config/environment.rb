require 'bundler'
Bundler.require
require 'nokogiri'
require 'open-uri'
require 'pry'
require 'colorize'

Bundler.require

require_relative '../lib/pokedex.rb'
require_relative '../lib/pokemon.rb'
require_relative '../lib/scraper.rb'
require_relative '../lib/CLI.rb'
require_relative '../lib/print_pokemon.rb'