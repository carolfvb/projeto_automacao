require 'selenium-webdriver'

Before do |scn|
  Capybara.page.driver.browser.manage.window.maximize
  @scn_name = scn.name
end

AfterStep do
  @min = "#{Time.now.strftime('%H-%M-%S-%L')}"
  save_screenshot("data/screenshot/#{@scn_name}/#{@min}.png")
end

After do |scn|
  sleep 2
end
