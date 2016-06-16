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

Then, browse to [http://localhost:8081/signup]() to set up the
usernames, emails, etc.  Usernames are of the form racer1, racer2, etc.


## Setting Up The Clients

### As a user with administrative priviledges:

    sudo npm install -g karma-cli

Create an account on the client machines with no password.  "coderacer" is
a fine login.  On OSX, you will need to create the account with a
password, then set the password to blank.

Install nodejs (see [http://node.js]() for details).


### As the coderacer User

In the .profile file, include the following:

    export RACER_NAME="racer1"  # alter number as needed
    export CODERACE=~/CodeRace/raceClient/KataBattles
    export RACECLIENT=~/CodeRace/raceClient
    export KATA=RomanNumeralsJS

Clone this repo from the home directory of the coderacer account.

    cd ~/CodeRace
    npm install

Update the desktop with any branding imagery.

Log out and log back in.  You should get an editor launched with two
javascript files open.  Make a test pass and confirm that the server is
properly updated.

    cd ~/Desktop
    ln ~/CodeRace/startrace.sh "Start Race"
    chmod 755 "Start Race"

*Making Changes*  You must make all changes on the server repo that you
cloned earlier, and push them up to github.  Then pull down the changes
on the client.  The act of starting the race wipes out any local changes
you may have made on the client.
