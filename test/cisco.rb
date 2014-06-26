# encoding: UTF-8
require_relative '../lib/decrypt'
require 'minitest/autorun'

class TestCisco < Minitest::Test
  def setup
    @d = Decrypt.new '02320C5E280918', :cisco
  end

  def test_cisco
    @d.decrypt
    assert_equal 'TheCow', @d.plain_text_password
  end
end
