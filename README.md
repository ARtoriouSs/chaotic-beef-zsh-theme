# Chaotic beef

It's a tiny and beautiful theme for Oh-My-Zsh without something superfluous, it'll only show * if the git index
is not empty and ≠ if current branch needs to be rebased on a default branch. The default branch is master by default,
but you can override it for particular repos by creating `.git/safe/default_branch` file with the branch name in it:

```bash
mkdir .git/safe/
touch .git/safe/default_branch
echo develop > .git/safe/default_branch
```

You can find more info about `.git/safe` [here](https://thoughtbot.com/blog/git-safe).

---------------
### Demo

![Demo picture](https://github.com/ARtoriouSs/chaotic-beef-zsh-theme/blob/master/demo.png "Demo")

### Install

* First of all you need [Zsh](http://www.zsh.org "Zsh website") shell and [Oh-My-Zsh](https://ohmyz.sh/ "Oh-My-Zsh website") framework to be installed. Then get file with theme:

```bash
wget -P $ZSH/themes https://raw.githubusercontent.com/ARtoriouSs/chaotic-beef-zsh-theme/master/chaotic-beef.zsh-theme
```

* After that change the following line in your .zshrc file in $HOME directory:

```bash
ZSH_THEME="chaotic-beef"
```

* Don't forget to relogin
