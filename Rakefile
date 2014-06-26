# encoding: UTF-8
require 'minitest'
require 'fileutils'
task default: %w(juniper cisco)

desc 'Test Junos $9$ Password Decryption'
task :juniper do
  ruby 'test/juniper.rb'
end

desc 'Test Cisco IOS Type 7 Password Decryption'
task :cisco do
  ruby 'test/cisco.rb'
end

desc 'Install decrypt'
task :install, [:install_directory] => [:juniper, :cisco] do |_, args|
  args.with_defaults(install_directory: "#{Dir.home}/bin")
  Dir.mkdir args.install_directory unless Dir.exists? args.install_directory
  dest = File.join args.install_directory, 'decrypt'
  src = File.join Dir.pwd, 'decrypt.rb'
  puts "Installing `decrypt` to #{dest}..."
  FileUtils.symlink src, dest, force: true
end
