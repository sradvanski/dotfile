# Dotfiles Configuration

Based on my persnal configuration of .dotfiles used 
to bootsrap my working environment easly,
I have made a prot for our personal use.

The dot files provide following functionality:
pyenv - python version manager
rbenv - ruby version manager
goenv - go version manager
nvm - node version manager
jabba - ultimate java version manager
sdkman - java development tools manager
linuxbrew - user level package manager

# Setup Installation

In order to start using this setup these steps should be followed:

First we need to ensure that user that we are setting up dotfiles for,
must be added to passwordless sudo. We can do that by execution folowing command.
```bash
sudo visudo
```

After file opens we need to ensure to append folowing line:
```bash
user ALL=(ALL) NOPASSWD: ALL
```

Once this is done we can proceed to download required files.
<b>NOTE:</b> the directory where we are downloading sources we need to put in .dotfiles directory
We can do this by running following command.
```bash
git clone --recursive --depth=1 https://github.com/sradvanski/dotphiles.git .dotfiles 
```

Once all of sources donwloaded we can ensure to add correct user into our variables settings, this can be done by adding our user into:
```bash
vim .dotfiles/_internal/variables/variables.d/00-common.sh
```

And change user referenced in:
```bash
DOT_USER=your-username
```

Make sure that we copy sample configuration in user base configuration.

```bash
cd .dotfiles/_config
cp install.sample.config.yaml install.config.yaml
```
