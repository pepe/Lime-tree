Given /^I am in statics administation$/ do
  account = Account.make(:admin)
  visit '/admin'
  fill_in 'Email', with: account.email
  fill_in 'Password', with: account.password
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

