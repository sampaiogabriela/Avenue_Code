
 Given(/^I search for a product on flyout menu$/) do
  @driver.get(@base_url + "/")
  verify { (@driver.find_element(:link, "Cookware Sets").text).should == "Cookware Sets" }
  !60.times{ break if (element_present?(:link, "Cookware Sets") rescue false); sleep 1 }
  @driver.find_element(:link, "Cookware Sets").click
  !60.times{ break if (element_present?(:css, "img.product-thumb") rescue false); sleep 1 }
  @driver.find_element(:css, "img.product-thumb").click
 end

 Then (/^I add a product to my shopping cart clicking on add to cart from product page$/) do
  !60.times{ break if (element_present?(:xpath, "//div[@id='pip']/div/div[7]/div[2]/div[2]/section/div/div/fieldset/button") rescue false); sleep 1 }
  verify { (@driver.find_element(:xpath, "//div[@id='pip']/div/div[7]/div[2]/div[2]/section/div/div/fieldset/button").text).should == "Add to Cart" }
  @driver.find_element(:xpath, "//div[@id='pip']/div/div[7]/div[2]/div[2]/section/div/div/fieldset/button").click
  !60.times{ break if (element_present?(:id, "anchor-btn-checkout") rescue false); sleep 1 }
  verify { (@driver.find_element(:id, "anchor-btn-checkout").text).should == "Checkout" }
  @driver.find_element(:id, "anchor-btn-checkout").click
 end

 And (/^i click to see product on shopping cart page$/) do
  @driver.get(@base_url + "/shoppingcart/")
  verify { (@driver.find_element(:xpath, "(//input[@type='image'])[4]").text).should == "" }
  @driver.find_element(:xpath, "(//input[@type='image'])[4]").click
 end