alias fixmongo='sudo rm /usr/local/var/mongodb/mongod.lock;sudo mongod --dbpath /usr/local/var/mongodb/ --repair;sudo mongod --dbpath /usr/local/var/mongodb/ --journal;mongo'
