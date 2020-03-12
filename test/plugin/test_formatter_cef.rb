require "helper"
require "fluent/plugin/formatter_cef.rb"

class CefFormatterTest < Test::Unit::TestCase
  setup do
    Fluent::Test.setup
  end

  test "failure" do
    flunk
  end

  private

  def create_driver(conf)
    Fluent::Test::Driver::Formatter.new(Fluent::Plugin::CefFormatter).configure(conf)
  end
end
