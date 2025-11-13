# My Dotfiles

This directory contains the dotfiles for my mac system.

# Setting up your Mac
1. Update macOS to the latest version with the App Store

2. [Generate a new public and private SSH key](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) by running:
  ```bash
  curl https://raw.githubusercontent.com/luigircruz/dotfiles/HEAD/ssh.sh | sh -s "<your-email-address>"
  ```

3. Clone this repository and save it into `~/dotfiles`
  ```bash
  git clone https://github.com/luigircruz/dotfiles.git $HOME/dotfiles
  ```

4. Go to dotfiles directory
  ```bash
  cd dotfiles
  ```

5. Make install.sh executable
  ```bash
  chmod +x ~/dotfiles/install.sh
  ```

6. Start installation
  ```bash
  /bin/bash ~/dotfiles/install.sh
  ```
