require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib', __FILE__)
require 'app/player'
require 'app/game'
require 'app/board'
require 'app/board_case'
require 'views/show'
require 'views/application'

# require 'views/fichier'
Application.new.perform

