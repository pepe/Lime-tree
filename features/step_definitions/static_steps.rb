Before do
  Account.delete_all
  Static.delete_all
end
Given /^I am in statics administation$/ do
  Account.create(email: 'admin@example.com', password: 'master',
                 password_confirmation: 'master', role: 'admin')
  visit '/admin'
  fill_in 'email', with: 'admin@example.com'
  fill_in 'password', with: 'master'
  click_button 'Sign In'
  click_link 'Statics'
end

When /^I fill in statics details and save it$/ do
  fill_in 'Title', with: 'Home page'
  fill_in 'Path', with: 'home'
  fill_in 'Body', with: 'Hello world!'
  click_button 'Save'
end

Then /^I should see static page was created$/ do
  page.should have_content('Static was successfully created')
end

When /^I go to create one$/ do
  click_link 'New'
end

When /^I go to its path$/ do
  visit '/nice'
end

Then /^I should see its title and body$/ do
  page.should have_content('Nice page')
  page.should have_content('Nice page indeed. Hello there')
end

When /^I go to web root$/ do
  visit '/'
end

Then /^I should see I am at home sweet home$/ do
  page.should have_content('Home sweet home.')
end

When /^click tagged page title in menu$/ do
  click_link 'Nice page'
end

Then /^I should see index page title$/ do
  page.should have_content('Home page')
end

Then /^I should see configuration page title$/ do
  page.should have_content('Nice website')
end

Then /^I should see footer text$/ do
  within('footer') do
    page.should have_content('Footer text')
  end
end

Then /^I should see its body formated$/ do
  page.should have_xpath("//html/body/div/div/div/p[2]")
end

Then /^I should see side information title and body$/ do
  page.should have_content('There are some overflow from nice page.')
end

Then /^I should see index first in menu$/ do
  page.find(:xpath, "//html/body/div/header/nav/ul/li[1]").text.should == "Home page"
  page.find(:xpath, "//html/body/div/header/nav/ul/li[2]").text.should == "Nice page"
end
