Leed container
====

### Homepage: http://leed.idleman.fr/


### Prerequisites

- docker
- docker-compose
- a MySQL server


### How to start:
	mkdir leed && cd leed
	git clone git@github.com:hervenicol/docker-leed.git .
	docker-compose up -d

*Note: you actually only need docker-compose.yml file to start Leed*

It exposes port **8006** on your server. You can change this by editing **docker-compose.yml**.

You should then give access to this container through your web server.

Here is a Apache example config:

	ProxyPass "/leed" "http://localhost:8006"
	ProxyPassReverse "/leed" "http://localhost:8006"

Then go to:

- http://yourserver/leed/
or:
- http://yourserver:8006/

...and configure Leed to access your database.


Now, Leed configuration and working data is reparted this way:

- database access information (login / password / database name...) is stored by the containers.
- user data (feed subscriptions and status) is stored in your database.

This means, if you wipe your containers with

	docker-compose down
or

	docker-compose stop && docker-compose rm
... you can then re-enter your database credential and find again your Leed data in its stored state.

