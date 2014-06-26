#!/usr/bin/env ruby
# encoding: UTF-8
require 'trollop'
require_relative 'lib/decrypt'

opts = Trollop.options do
    opt :type, '`ios` or `junos`.', type: :string
end

abort 'Must specify type.  Type must be `ios` or `junos`.' unless opts[:type]
opts[:type] = opts[:type].to_sym

print "Paste hash, including leading characters, below.\n> "
hashed_password = gets.chomp

d = Decrypt.new hashed_password, opts[:type]
d.decrypt

puts "\n\nOriginal hash: #{hashed_password}"
puts "Plain-Text   : #{d.plain_text_password}"
