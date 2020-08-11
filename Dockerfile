FROM ubuntu:18.04

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
RUN apt-get -qq update
#clones the repo
RUN git clone https://github.com/denomparkour/shell-bot
#changes dir to shell-bot
CMD cd shell-bot
#Installs python and build-essential
CMD sudo apt install -y make python build-essential
#Installs Gclone
CMD sudo bash <(wget -qO- https://git.io/gclone.sh)
#Installs Fclone
CMD sudo bash <(wget -qO- https://git.io/JJYE0)
#Runs npm install
CMD npm install
#Starts the bot
CMD node server
