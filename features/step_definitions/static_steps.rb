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
  fill_in 'Path', with: '/'
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
  Static.create(title: 'Nice page', path: '/nice', body: 'Nice page indeed. Hello there.')
end

When /^I go to its path$/ do
  visit '/nice'
end

Then /^should see its title and body$/ do
  page.should have_content('Nice page')
  page.should have_content('Nice page indeed. Hello there')
end

