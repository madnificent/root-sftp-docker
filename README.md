# root sftp docker

A simple docker instance allowing for sftp root access.

## Motivation

This docker instance allows you to let users manage files using SFTP whilst updating the files of '/app' with root permissions.  You can use this docker instance to let users update the files of other docker instances which maintain their files as root.

## Example use

Start the docker container with the desired username, password and folder.  Forward the necessary ports.

    docker run -d -e USER=testuser -e PASSWD=sekrit -p 2222:22 -v /tmp/app:/app madnificent/root-sftp

You can now log into the container using sftp with the following settings

- username: `testuser`
- password: `sekrit`
- host: `localhost`
- port: `2222`

