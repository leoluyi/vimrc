![VIM](https://dnp4pehkvoo6n.cloudfront.net/43c5af597bd5c1a64eb1829f011c208f/as/Ultimate%20Vimrc.svg)

# The Ultimate vimrc

(This repository is a fork from amix)

There are two versions:

* **The Basic**: If you want something small just copy [basic.vim](https://github.com/leoluyi/vimrc/blob/master/vimrcs/basic.vim) into your ~/.vimrc and you will have a good basic setup
* **The Awesome**: Includes a ton of useful plugins, color schemes, and configurations

I would, of course, recommend using the awesome version.

## How to install the Awesome version?
### Install for your own user only
The awesome version includes a lot of great plugins, configurations and color schemes that make Vim a lot better. To install it simply do following from your terminal:

```sh
git clone --depth=1 https://github.com/leoluyi/vimrc.git ~/.vim_runtime
bash ~/.vim_runtime/install_awesome_vimrc.sh
```

### Install for multiple users
To install for multiple users, the repository needs to be cloned to a location accessible for all the intended users.

```sh
git clone --depth=1 https://github.com/leoluyi/vimrc.git /opt/vim_runtime
bash ~/.vim_runtime/install_awesome_parameterized.sh /opt/vim_runtime user0 user1 user2
# to install for all users with home directories
bash ~/.vim_runtime/install_awesome_parameterized.sh /opt/vim_runtime --all
```

Naturally, `/opt/vim_runtime` can be any directory, as long as all the users specified have read access.

## How to uninstall
Just do following:
* Remove `~/.vim_runtime`
* Remove any lines that reference `.vim_runtime` in your `~/.vimrc`
