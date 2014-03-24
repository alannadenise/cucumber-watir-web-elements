require 'watir-webdriver'

Given(/^a webpage containing the data spinner element$/) do
    @b = Watir::Browser.new 
    @b.goto "http://jqueryui.com/resources/demos/spinner/default.html"
end

When(/^I click on the up arrow$/) do
    @b.a(:class => 'ui-spinner-button ui-spinner-up ui-corner-tr ui-button ui-widget ui-state-default ui-button-text-only').click
end

When(/^I click on the set value button$/) do
    @b.button(:id => 'setvalue').click
end

Then(/^the value of the data spinner is (\d+)$/) do |value|
    @b.button(:id => 'getvalue').click
    @b.alert.text.should ==value.to_s
end

After do |scenario|
    @b.close
end