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

#### On a Mac

    cd ~/Desktop
    ln ~/CodeRace/startrace.sh "Start Race"
    chmod 755 "Start Race"

#### On a Linux System

Linux can't easily launch a shell script from a desktop launcher, so you
will need to use an executable which has been created for launching
katas.

    cd
    git clone https://github.com/ClayDowling/miniature-eureka
    cd miniature-eureka
    make

Now from the desktop create a launcher.  For the executable use
${HOME}/miniature-eureka/miniature-eureka, but via the browse button in
the launcher wizard. 

**IMPORTANT** You must set the launcher to open in a terminal.  The
program needs a connected output stream to display any information from
the startRace script, or display any error messages about launching the
programs.

## Making Changes

You must make all changes on the server repo that you
cloned earlier, and push them up to github.  Then pull down the changes
on the client.  The act of starting the race wipes out any local changes
you may have made on the client.
