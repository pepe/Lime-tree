Given /^I am in statics administation$/ do
  account = Account.create(email: 'admin@example.com', password: 'master', password_confirmation: 'master')
  visit '/admin'
  fill_in 'Email', with: 'admin@example.com'
  fill_in 'Password', with: 'master'
  click_button 'Login'
  click_link 'Statics'
end

When /^when I fill in statics details and save it$/ do
  fill_in 'Title', with: 'Home page'
  fill_in 'Path', with: '/'
  fill_in 'Body', with: 'Hello world!'
  click_button 'Save'
end

Then /^I should see static page was created$/ do
  page.should have_content('Static was succesfully created')
end

