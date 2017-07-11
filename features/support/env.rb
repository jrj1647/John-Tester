require 'selenium-webdriver'
require 'watir-webdriver'
require 'byebug'
require 'rubygems'
require 'cucumber'

require_relative 'lib/browser'
require_relative 'lib/page'

Around("@web") do |_, block|
  with_browser do
    block.call
  end
end

Before do |scenario|
  puts Time.now.to_s
end
