# wesdobry - rsync-ssh-delay
[![Docker Automated build](https://img.shields.io/github/workflow/status/wesdobry/rsync-ssh-delay/Push%20New%20Image)](https://github.com/wesdobry/rsync-ssh-delay/actions/workflows/push-new-image.yml/)
[![Image Size](https://img.shields.io/docker/image-size/wesdobry/rsync-ssh-delay/latest?style=flat&logo=docker)](https://hub.docker.com/r/wesdobry/rsync-ssh-delay/)
[![Docker Pulls](https://img.shields.io/docker/pulls/wesdobry/rsync-ssh-delay?style=flat&logo=docker)](https://hub.docker.com/r/wesdobry/rsync-ssh-delay/)
[![Docker Stars](https://img.shields.io/docker/stars/wesdobry/rsync-ssh-delay?style=flat&logo=docker)](https://hub.docker.com/r/wesdobry/rsync-ssh-delay/)

This container simply runs rsync in a loop with arguments and delay specified by environment variables.

**Environment Variable Options**

- SOURCE - Source path

- DESTINATION - Destination path

- ARGS - Specify all rsync options
  Example:  Settings $ARGS to equal to "-rPvht --exclude *.part --delete --partial" would result in running an rsync command like:

  rsync -rPvht --exclude *.part --delete --partial $SOURCE $DESTINATION

- DELAY - The delay in seconds between loops.