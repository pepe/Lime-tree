#Lime-tree

Lime-tree is simple CMS system implemented in [Padrino](http://padrinorb.com).
Its name is reminiscence to Fikus CMS, which I could not get running so
I started with my own.

Right now it is simplistic implementation, but yet usable and with cucumber
features which describes all functions.

## Instalation

Clone this repo and install bundle:
    git clone git://github.com/pepe/Lime-tree.git
    bundle install
Then add admin user:
    bundle exec padrino rake seed
Boot Padrino:
    bundle exec padrino start
and go to [Admin address](http://localhost:3000/admin) and start creating
pages.

Those tagged with 'in_menu' will show in menu.

## Development

Do not be crazy, this is nothing you wanna have something in common. Wait
until version 0.0.1 at very least. Now it's highly radioactive.
