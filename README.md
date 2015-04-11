My dotfiles
---
It installs and sets up vim, git, zsh and a profile for gnome terminal based on [tomorrow theme](https://github.com/chriskempson/tomorrow-theme/).

### Automatic install
---
**Using curl**
```shell
curl -L https://raw.githubusercontent.com/proshanto/dotfiles/master/setup.sh > setup.sh; chmod +x setup.sh; ./setup.sh
```
**Using wget**
```shell
wget https://raw.githubusercontent.com/proshanto/dotfiles/master/setup.sh -O setup.sh; chmod +x setup.sh; ./setup.sh
```
### Manual install
---
Update package list `sudo apt-get update`

* Create a profile for gnome terminal based on tomorrow theme

    If you don't have GNOME configuration database system install `sudo apt-get install gconf2`
```shell
wget https://raw.githubusercontent.com/chriskempson/tomorrow-theme/master/Gnome-Terminal/setup-theme.sh -O - | bash
```

* Install vim and git
```shell
sudo apt-get install vim
sudo apt-get install git
```

* Install vim Pathogen
```shell
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
wget https://tpo.pe/pathogen.vim -O ~/.vim/autoload/pathogen.vim
```

* Install Nerdtree
```shell
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
```

* Install lucius color scheme for vim
```shell
# Create directory if it's not already created
mkdir -p ~/.vim/colors
wget "http://www.vim.org/scripts/download_script.php?src_id=23000" -O ~/.vim/colors/lucius.vim
```

* Install zsh
```shell
sudo apt-get install zsh
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh
```

* Download and overwrite files if already exists

    First take backup if you need to.

    Downloads and create/replace these files
```shell
wget https://raw.githubusercontent.com/proshanto/dotfiles/master/.aliases -O ~/.aliases
wget https://raw.githubusercontent.com/proshanto/dotfiles/master/.alias_functions -O ~/.alias_functions
wget https://raw.githubusercontent.com/proshanto/dotfiles/master/.bashrc -O ~/.bashrc
wget https://raw.githubusercontent.com/proshanto/dotfiles/master/.gitconfig -O ~/.gitconfig
wget https://raw.githubusercontent.com/proshanto/dotfiles/master/.vimrc -O ~/.vimrc
wget https://raw.githubusercontent.com/proshanto/dotfiles/master/.zshrc -O ~/.zshrc
```

* Finally create a file for local aliases
`touch ~/.aliases_local`

**And you're done !!! enjoy :)**