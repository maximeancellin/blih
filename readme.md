# Blih in docker

Project to easy use Epitech BLIH on all OS and distributions.

## How to use

Test your container:
```shell
    docker run -it gaam1n/blih -u firstname.lastname@epitech.eu whoami
```

It's extracted from Blih helper:
```shell
    Usage: blih.py [options] command ...

    Global Options :
    	-u user | --user=user		-- Run as user
    	-v | --verbose			-- Verbose
    	-b url | --baseurl=url		-- Base URL for BLIH
    	-t | --token			-- Specify token in the cmdline

    Commands :
    	repository			-- Repository management
    	sshkey				-- SSH-KEYS management
    	whoami				-- Print who you are
```

### Upload a new ssh-key

```shell
    blih -u firstname.lastname@epitech.eu sshkey upload
    /path/to/your/public/key
```

> With docker you must mount you ssh-key in container with following command: ```docker run -it -v ~/.ssh:/root/.ssh gaam1n/blih -u {epitech_mail} sshkey upload /root/.ssh/id_rsa.pub```

### Create a repository

```shell
blih -u firstname.lastname@epitech.eu repository create
my_repo
```

### Give permissions

```shell
    blih -u firstname.lastname@epitech.eu repository setacl
    my_repo ramassage-tek r
```

## Add in you bashrc

echo "alias blih="docker run -it gaam1n/blih" >> ~/.bashrc

> You can add `-u firstname.lastname@epitech.eu` if you want quickly use `blih`

## About

All informations about this container and Blih.

- Python version: `3.8`
- Blih version: `1.7`
