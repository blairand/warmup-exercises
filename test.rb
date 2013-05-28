require 'minitest/autorun'
require 'minitest/pride'
require_relative 'regex_practice'

class RegexPracticeTest < MiniTest::Unit::TestCase

  def test_finding_a_single_word
    a = "the sentence is accepted this"
    result = RegexPractice.find(a)
    assert_equal "accepted", result
  end

  def test_finding_finished_before_accepted
    a = "the sentence is accepted but someone else finished"
    result = RegexPractice.find(a)
    assert_equal "accepted", result
  end
end

