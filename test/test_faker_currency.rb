require File.expand_path(File.dirname(__FILE__) + '/test_helper.rb')

class TestFakerCurrency < Test::Unit::TestCase
  def setup
    @tester = Faker::Currency
  end

  def test_name
    assert @tester.name.match(/[\w\']+/)
  end

  def test_code
    assert @tester.code.match(/[A-Z]{3}/)
  end
end
