require 'spec_helper'
require 'selenium-webdriver'

describe 'thing' do
  
  it 'should do this' do
    puts 'hi'
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "http://google.com"

    element = driver.find_element(:name, 'q')
    element.send_keys "Hello WebDriver!"
    element.submit

    puts driver.title

    driver.quit
    expect(true).to equal true
  end
end