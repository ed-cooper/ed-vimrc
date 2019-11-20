# ed-vimrc
My personal vim configuration.

## Requirements
Optimised for vim version 8.1.

*Requires compiled Python 3 and system clipboard support.*

## Usage
Clone this repo into your `~/.vim` folder:

```
git clone git@github.com:ed-cooper/ed-vimrc.git ~/.vim
```

Then, initialise the submodules:

```
git submodule update --init --recursive
```

Next, compile YouCompleteMe:

Full steps are available [here](https://github.com/ycm-core/YouCompleteMe#linux-64-bit)

```
sudo apt install build-essential cmake python3-dev
cd ~/.vim/bundle/always/YouCompleteMe
python3 install.py
```

This configuration also assumes use of the powerline patched fonts, which can be downloaded [here](https://github.com/powerline/fonts):

```
sudo apt install fonts-powerline
```

**Note:** I cannot guarantee any compatibility between settings in this repo and any pre-existing changes made to your personal `~/.vimrc` file.

