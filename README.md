#Lime-tree

Lime-tree is simple CMS system implemented in [Padrino](http://padrinorb.com).
Its name is reminiscence to Fikus CMS, which I could not get running so
I started with my own.

Right now it is simplistic implementation, but yet usable and with cucumber
features which describes all functions.

## Instalation

Clone this repo and install bundle to its gemset:

    git clone git://github.com/pepe/Lime-tree.git
    rvm --create 1.9.2@lime-tree
    bundle install

Then add admin user:

    bundle exec padrino rake seed

Boot Padrino:

    bundle exec padrino start

Then go to [Admin address](http://localhost:3000/admin) and start creating
pages.

Those tagged with 'in_menu' will show in menu.

## Compatibility and dependencies

Whole project is developed for ruby 1.9.2 only that's why rvm is
in needed.

Also needed is MongoDB. Install it by brew or apt-get, or use MongoHQ
free one.

## Styling and formating

If you add custom.css to public/stylesheets it will be applied to page.
Also body of the static is formatted with markdown. And static with
_side suffix will be rendered in .side div on page.

## Development

Do not be crazy, this is nothing you wanna have something in common. Wait
until version 0.0.1 at very least. Now it's highly radioactive.
