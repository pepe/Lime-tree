# Seed add you the ability to populate your db.
# We provide you a basic shell for interaction with the end user.
# So try some code like below:
#
#   name = shell.ask("What's your name?")
#   shell.say name
#
email     = shell.ask "Which email do you want use for logging into admin?"
password  = shell.ask "Tell me the password to use:"

shell.say ""

account = Account.create(:email => email, :name => "Foo", :surname => "Bar", :password => password, :password_confirmation => password, :role => "admin")

if account.valid?
  shell.say "================================================================="
  shell.say "Account has been successfully created, now you can login with:"
  shell.say "================================================================="
  shell.say "   email: #{email}"
  shell.say "   password: #{password}"
  shell.say "================================================================="
  shell.say ""
else
  shell.say "Sorry but some thing went wrong!"
  shell.say ""
  account.errors.full_messages.each { |m| shell.say "   - #{m}" }
end

shell.say "Creating configuration static"
shell.say "================================================================="
name = shell.ask "What is the title of the website:"
company = shell.ask "and company:"
Static.create(title: name, path: 'configuration',
              tags: ['configuration'], body: "footer:\n  Copyright &copy; 2011 #{company}")
shell.say <<TEXT
You can always edit this configuration in /admin.
Body of this configuration static is yaml text with options. You can use
them in page.haml as could be seen with footer.

TEXT
shell.say "Creating home page"
shell.say "================================================================="
Static.create(title: 'Home page', path: '', body: "## Home sweet home.\n\nWelcome to #{company} home. We hope, you like what you see", tags: ['in_menu'])
shell.say <<TEXT
Home page is page with empty path. All other paths are without a slash.
So details leads to /details. Tag in_menu puts page to top menu
TEXT

