Given /^I created static page$/ do
  Static.create(title: 'Nice page', path: 'nice',
                body: 'Nice page indeed. Hello there.')
end

Given /^I created static index page$/ do
  Static.create(title: 'Home page', path: '', body: 'Home sweet home.')
end

Given /^I created page and tagged it to be in menu$/ do
  Static.create(title: 'Nice page', path: 'nice',
                body: 'Nice page indeed. Hello there.', tags: ['in_menu'])
end

Given /^I created configuration page$/ do
  Static.create(title: 'Nice website', path: 'configuration',
                tags: ['configuration'])
end

Given /^I created configuration page with footer$/ do
  Static.create(title: 'Nice website', path: 'configuration',
                tags: ['configuration'], body: "footer:\n  Footer text")
end

Given /^I created static page with body in markdown$/ do
  Static.create(title: 'Nice page', path: 'nice',
                body: "Nice page indeed.\n\nHello there.")
end

Given /^I created side information page for it$/ do
  Static.create(title: 'Nice page side info', path: 'nice_side',
                body: 'There are some overflow from nice page.')
end

Given /^I created static index page with higher weight$/ do
  Static.create(title: 'Home page', path: '', body: 'Home sweet home.', weight: 999)
end

Given /^I created static page with lower weight$/ do
  Static.create(title: 'Nice page', path: 'nice',
                body: 'Nice page indeed. Hello there.', tags: ['in_menu'], weight: 1)
end

