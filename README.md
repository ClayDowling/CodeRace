# Code Race

[TODO: Add some more description]

## Running the server

Fork this repo and clone the fork to the server.

Update raceClient/raceProgressPoster.js to use your server's IP address
instead of 127.0.0.1.  

*IMPORTANT* Push that change to your repo before setting up clients.


```sh
npm install
npm start
```

Register all of the users with appropriate names at the /signup page on
your server.  Names are of the form
racer1, racer2, etc.  The Display name should be chosen as appropriate
for the event.

Then, browse to [http://localhost:8081/signup]() to set up the usernames, emails, etc.

## Setting Up The Clients

### As a user with administrative priviledges:

    sudo npm install -g karma-cli

Create accounts on the client machines with no password.  "coderacer" is
a fine login.  On OSX, you will need to create the account with a
password, then set the password to blank.

Install nodejs (see node.js for details).


### As the coderacer User

In the .profile file, include the following:

    export RACER_NAME="racer1"  # alter number as needed
    export CODERACE=~/CodeRace/raceClient/KataBattles
    export RACECLIENT=~/CodeRace/raceClient
    export KATA=RomanNumeralsJS

    . ~/CodeRace/startrace.sh

    cd

Clone this repo from the home directory of the coderacer account.

    cd ~/CodeRace
    npm install

Update the desktop with any branding imagery.

Log out and log back in.  You should get an editor launched with two
javascript files open.  Make a test pass and confirm that the 
