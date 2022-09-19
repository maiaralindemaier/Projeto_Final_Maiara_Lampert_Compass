require 'cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'capybara/cucumber'
require 'capybara'
require 'site_prism'

ENVIRONMENT = ENV["ENVIRONMENT"]
ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")
puts ENVIRONMENT_CONFIG
URL=ENVIRONMENT_CONFIG["url"]

Capybara.register_driver :my_chrome do |app|
    caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" => {"args" => [ '--ignore-ssl-errors', '--ignore-certificate-errors', '--disable-popup-blocking',
        '--disable-gpu', '--disable-translate', '--start-maximized', '--incognito', '--no-sandbox', '--window-size=1420,835', '--debug-level=3']})
  
    if ENV['HEADLESS'] 
      caps['goog:chromeOptions']['args'] << '--headless'
      caps['goog:chromeOptions']['args'] << '--disable-site-isolation-trials'
    end   

Capybara.default_driver = :my_chrome
Capybara.app_host = url
end