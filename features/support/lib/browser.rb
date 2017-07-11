require 'watir-webdriver'
require 'selenium-webdriver'

module Browser
  def browser
    raise "browser instance is not set" unless @_browser
    @_browser
  end

  def with_browser(&block)
    return block.call if @_browser
    begin
      @_browser = _initialize_browser
      @_browser.window.resize_to(1366, 768)
      return block.call
    ensure
      @_browser.close
      @_browser = nil
    end
  end

  private

  def _initialize_browser
    case ENV['BROWSER']
      when 'chrome'
        #will need to change the driver_path if you are running on windows.
        driver_path = "/Applications/Google\ Chrome.app/Contents/MacOS/Google Chrome"
        Selenium::WebDriver::Chrome.path = driver_path
        driver = Selenium::WebDriver.for :chrome
        browser = Watir::Browser.new driver, :switches => %w[--ignore-certificate-errors --disable-notifications]
      when 'firefox'
        profile = Selenium::WebDriver::Firefox::Profile.new
        Watir::Browser.new :firefox, :profile => 'default'
    end
  end

end

World(Browser)