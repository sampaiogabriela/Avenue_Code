
Given(/^I search for a product on search input$/) do
  @driver.get(@base_url + "/")
  @driver.find_element(:id, "search-field").clear
  @driver.find_element(:id, "search-field").send_keys "wooden spoons"
  @driver.find_element(:id, "search-field").clear
  @driver.find_element(:id, "search-field").send_keys "wooden spoons"
end

Then (/^I hoover over the product image to see the quick look button$/) do
  @driver.find_element(:link, "wooden spoons").click
  @driver.find_element(:link, "wooden spoons").click
end

And (/^i click on the quick look button to see product$/) do |product|
  @driver.find_element(:css, "span.quicklook-link").click
  @driver.find_element(:css, "span.quicklook-link").click

  @driver.find_element(:xpath, "//li[@id='itemselection']/div/section/div/div/fieldset/button").click
  @driver.find_element(:xpath, "//li[@id='itemselection']/div/section/div/div/fieldset/button").click

  @driver.find_element(:id, "anchor-btn-checkout").click
  @driver.find_element(:id, "anchor-btn-checkout").click
end