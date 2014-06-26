#!/usr/bin/env ruby
# encoding: UTF-8
require 'router_crypt'
class Decrypt
  attr_reader :plain_text_password
  def initialize(h, t)
    @hashed_password = h
    @type = t
  end

  def decrypt
    if @type == :junos
      @plain_text_password = RouterCrypt::JunOS.decrypt @hashed_password
    else
      @plain_text_password = RouterCrypt::IOS.decrypt @hashed_password
    end
  end
end
