---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Hpc"
subtitle: ""
summary: ""
authors: []
tags: []
categories: []
date: 2023-11-07T19:33:27+01:00
lastmod: 2023-11-07T19:33:27+01:00
featured: false
draft: false

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



# Connecting to an HPC Server: A Simplified Guide

Connecting to a high-performance computing (HPC) server might seem daunting at first.
However, with the right tools and guidance, it can be a straightforward process.
This blog post aims to demystify the connection process, making it accessible to both novices and seasoned users.

## Prerequisites:

Before we begin, ensure you know in theory how to connect to your server, e.g. You have the server address, your user login and password.

## Step 1: Installing Visual Studio Code

While many corporate and academic institutions provide mobaXterm or other SSH clients, Visual Studio Code is a free and open-source alternative that is easy to install and use.
It also has a Remote-SSH extension that makes connecting to an HPC server a breeze.

Download and install Visual Studio Code from [here](https://code.visualstudio.com/download).

[This tutorial](https://carleton.ca/scs/2023/vscode-remote-access-and-code-editing/) is a good reference for this step (with screenshots).

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


### For windows users, installing Git for Windows

Many commands are much easier if you have a bash terminal. Git for Windows provides a bash terminal and a lot of useful commands. You can download it from [here](https://git-scm.com/download/win).

In the VS code bottom plane, Click on Terminal, then the `+`-sign. Select Git bash. Also use the `Configure Terminal settings` to make this the default terminal. 

## Step 2: Simmplifying Connection with Alias and SSH Key


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

**Conclusion**

Connecting to an HPC server doesn't have to be a daunting task. With Visual Studio Code and the Remote - SSH extension, you can easily connect to your HPC server and start working on your projects. By creating an alias and setting up SSH keys, you can further simplify the connection process.

I hope this blog post has been helpful. If you have any questions, please leave a comment below.

**Additional Resources**

* Visual Studio Code SSH documentation: https://code.visualstudio.com/docs/remote/ssh











### Creating an Alias

1. Open your local machine's terminal.
2. Create an alias for your HPC server connection using the following command:

```bash
ssh-add ~/.ssh/id_rsa
```

Replace `id_rsa` with the name of your private SSH key if it's different.

### Setting Up SSH Key

1. Generate an SSH key pair if you haven't already.
2. Copy the public key from your local machine.
3. Add the public key to your HPC server's authorized keys file.

Once the alias and SSH key are configured, you can connect to your HPC server using the following command in your local machine's terminal:

```bash
ssh <alias>
```

Replace `<alias>` with the alias you created.

