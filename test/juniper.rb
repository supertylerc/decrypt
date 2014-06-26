# encoding: UTF-8
require_relative '../lib/decrypt'
require 'minitest/autorun'

class TestJuniper < Minitest::Test
  def setup
    @d = Decrypt.new '$9$EDXheMdVYJZjqmpBEcMWdVwgJD.mT3/tevdsgJHkn/C', :junos
  end

  def test_juniper
    @d.decrypt
    assert_equal 'TheCowGoesOink', @d.plain_text_password
  end
end
