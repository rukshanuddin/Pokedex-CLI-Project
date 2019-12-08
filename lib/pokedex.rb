require_relative '../config/environment'

VERSION = "0.10.0"
class Pokedex

    attr_accessor :version, :url, :info, :index

        @@all = []
    def initialize(version, url, info, index)
        @version = version
        @url = url
        @index = index
        @info = info
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all.clear
    end

    def self.start
        CLI.new
    end
end
