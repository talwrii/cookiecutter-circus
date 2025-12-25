# circus cookie cutter script
I like using circusd as a process manager rather than systemd because it keeps everything contained. However, in practice one needs a little plumbing to make things work well.  Things like a logger, the ability to redirect privileged ports. I also tend to run services on a local mdns network, so I like to add services. 

This is a cookiecutter script to set up a basic circus script.

I tend to have a distinct user for each servier and place this in the home directory (under version control). I also like to run services on distinct IP addresses connected to the same host but store these IPs in the hosts file.


## Alternatives
You could use systemd user scripts.
You could log to separate files rather than using a syslog. 

## Usage
Create the user

`sudo adduser --disabled-password circus-cookiecutter service`
`sudo adduser $USER service`
`sudo chmod g+sw -R  /home/service`
`cd /home/service`

Run the following to set up the scripts

`cookiecutter https://github.com/talwrii/cookiecutter-circus --no-input service_name=$(basename "$PWD"))

You can then add entries for your services to circus.ini and run `$USER-circus` to bring up the script.
