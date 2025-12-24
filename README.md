# circus cookie cutter script
I like using circusd as a process manager rather than systemd because it keeps everything contained. However, in practice one needs a little plumbing to make things work. Things like a logger, the ability to redirect privileged ports. I also tend to run services on a local mdns network, so I like to add services. 

This is a cookiecutter script to set up a basic circus script.

I tend to have a distinct user for each servier and place this in the home directory (under version control)

## Usage
Create the user

`adduser --disabled-password circus-cookiecutter service`
`sudo chmod g+sw -R  /home/service`
`cd /home/service`

Run `cookiecutter https://github.com/talwrii/circus-cookiecutter`

