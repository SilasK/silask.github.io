---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "HPC Server: The tricks you need to know"
subtitle: ""
summary: ""
authors: [admin]
tags: []
categories: []
date: 2023-11-07T19:33:27+01:00
lastmod: 2023-11-07T19:33:27+01:00
featured: false
draft: false
commentable: true

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---




# HPC Server: The tricks you need to know

Connecting to a high-performance computing (HPC) server might seem daunting at first.
However, with the right tools and guidance, it can be a straightforward process.
This blog post aims to demystify the connection process, making it accessible to both novices and seasoned users.

**Prerequisites:**

Before we begin, ensure you know in theory how to connect to your server, e.g. You have the server address, your user login and password.

{{< toc >}}

## Make connection a child's play

While many corporate and academic institutions provide mobaXterm or other SSH clients, Visual Studio Code is a free and open-source alternative that is easy to install and use.
It also has a Remote-SSH extension that makes connecting to an HPC server a breeze.

Download and install Visual Studio Code from [here](https://code.visualstudio.com/download).

**[This tutorial](https://carleton.ca/scs/2023/vscode-remote-access-and-code-editing/) is a good reference for this step.**

Now you should be able to connect to your HPC server using Visual Studio Code and write and run code remotely.

### Run a bash code on the server

If you flow the tutorial above, you should be able to connect to the server, create a python script and run it. Now do the same with the following bash script:

```bash
#!/usr/bin/env bash

set -euo pipefail

echo "Hello World!"
```
Save the script as `hello.sh` and run it.
Go to the terminal and make the script executable:

```bash
chmod +x hello.sh
```

Now run the script:

```bash
./hello.sh
```

You should see the "Hello World!" message in the terminal


### Installing Git for Windows

Many commands are much easier if you have a bash terminal. Git for Windows provides a bash terminal and a lot of useful commands. You can download it from [here](https://git-scm.com/download/win).

In the VS code bottom plane, Click on Terminal, then the `+`-sign. Select Git bash. Also use the `Configure Terminal settings` to make this the default terminal. 

## Simplifying Connection


Bored to type your password each time you connect to the server? You can use an alias and an SSH key to simplify the connection process.

### Creating an Alias

Your server name might be long and difficult to remember. You can create an alias to simplify the connection process.

1. Open the SSH config file (usually located at ~/.ssh/config).
2. Add the following line to the end of the file:

```
Host myhpc
  HostName <hostname or IP address of your HPC server>
  User <your username for the HPC server>
```

Save the file.

Now, you can connect to your HPC server by simply typing `ssh myhpc` into the terminal.



### Setting Up SSH Keys

Bored to type your password each time you connect to the server? You can use an SSH key to simplify the connection process.

Run the following command in your local machine's terminal:

``` bash
ssh-keygen
```
Click enter to accept the default file location and name, unless you have already other server connections with keys.


``` bash
ssh-copy-id myhpc
```

Replace `myhpc` with the alias you created in the previous step.

Now you should be able to connect to your HPC server without typing your password.



## Install Conda on the server

If you want to run any bioinformatics programs, you need to install micromamba.

Some HPC servers have conda pre-installed. Using them may be easier, expecially if multiple users want to use the same environments, but often I realized you don't have all the packages you need. Therefore I recommend to install micromamba in your home directory/ team folder.

On the server or on your local machine, run the following commands: 

```bash
wget "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
bash Miniforge3-$(uname)-$(uname -m).sh
```

Follow the instructions of the installer.

Add the bioconda channel to mamba:
```bash
mamba config --add channels bioconda
mamba config --add channels conda-forge
mamba config --set channel_priority strict
```



With mamba, you can install any bioinformatics program. For example, to install bbmap, run the following command:

```bash
mamba install bbmap
```


## Make your life easier on the server

### Change file permissions to work better in a team

If you are working in a team you usually don't want to think about file permissions in shared folders. Therefore you can change the default file permissions. So that all files you write are readable and writable by your team members.

Add the following lines at the end of your .bashrc file:

```bash

# set mask so others of the same group can read and write your files, by default
umask g+rw,o-rwx

```
Note: Files in your private folder are not accessible to other team members. 

### Make download faster
Conda added a chunk to your bashrc file in order to stat it at the beginning of each session. This slows down the download of files. You can either cut paste this section in another script or add the following lines **before the mamba init section** of your .bashrc file:


```bash

if [ -z "${PS1:-}" ]; then
  # prompt var is not set, so this is *not* an interactive shell
  return
fi

```

This skips all the rest of the file when not in a interactive shell.

### Other useful modifications

You can add the following lines to your .bashrc file to make your life easier:

```bash


# Use aliases for often used commands
## Slurm
alias sq='squeue -u $USER'
alias sr='screen -r'
alias jobstatus="sacct -P -bn -j"

# Display table 
# tsv file.tsv
alias tsv="column -t -s $'\t'"

## Snakemake

lastlog () {

  ls $1.snakemake/log/*.log | tail -n1
}

```

See also [my Gist](https://gist.github.com/SilasK/fcfee200405196ae12588824591766ec)

## Using screen

Screen is a terminal multiplexer. It allows you to run multiple terminals in one terminal. It is very useful if you want to run a program in the background.

To start a screen session, type `screen  name` in the terminal.

To detach from a screen session, type `Ctrl + a` and then `d`.

To reattach to a screen session, type `screen -r name`.

To list all screen sessions, type `screen -ls`.

To kill a screen session, type `screen -X -S name quit`.


To visually distinguish if you are in a screen or not, you can add the [.screenrc](https://gist.github.com/SilasK/fcfee200405196ae12588824591766ec) file to your home directory.
