Tournament Results
==================

Final project for the Intro Relational Databases. The project consists in a API for querys related to an Swiss Tournament, with persistance in a Postgres database.

## Runing the project:
First go to the vagrant directory, start the vagrant and log in:
```
$ cd $PROJECT_FOLDER/vagrant/
$ vagrant up
$ vagrant ssh
```
Once in the vagrant environment, go to the source folder:
```
$ cd /vagrant/tournament
```

Now you must create the Postgres database using the ```tournament.sql``` file:
```
$ psql < tournament.sql
```
To run and test the API defined in ```tournament.py``` use the python test file ```tournament_test.py```:
```
$ python tournament_teste.py
```