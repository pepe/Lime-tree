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

Given /^I created static page$/ do
  Static.create(title: 'Nice page', path: 'nice', body: 'Nice page indeed. Hello there.')
end

When /^I go to its path$/ do
  visit '/nice'
end

Then /^should see its title and body$/ do
  page.should have_content('Nice page')
  page.should have_content('Nice page indeed. Hello there')
end

Given /^I created static index page$/ do
  Static.create(title: 'Home page', path: '', body: 'Home sweet home.')
end

When /^I go to web root$/ do
  visit '/'
end

Then /^I should see I am at home sweet home$/ do
  page.should have_content('Home page')
  page.should have_content('Home sweet home.')
end
