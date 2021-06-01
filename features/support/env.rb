require 'pry'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'site_prism'
require 'rspec'
require 'capybara/dsl'
require 'selenium-webdriver'
require 'report_builder'
require_relative File.expand_path('../base_screen.rb', __dir__)
require_relative File.expand_path('../modules/unidade_module.rb', __dir__)


World Capybara::DSL

#Config de navegador
Capybara.configure do |config|
	case 
		ENV['BROWSER']
	when 'chrome'
		driver = :selenium_chrome
	when 'chrome-headless'
		driver = :selenium_chrome_headless
	when 'firefox'
		driver = :selenium
	when 'firefox-headless'
		driver = :selenium_headless
	else
		raise 'Opção de profile enviada não existe'
	end
	# config.run_server = false
	config.default_driver = driver
	config.default_max_wait_time = 15
end