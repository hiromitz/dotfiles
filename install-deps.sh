# up to you (me) if you want to run this as a file or copy paste at your leisure


# https://github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
curl https://raw.github.com/jamiew/git-friendly/master/install.sh > /tmp/git-friendly.sh
chmod +x /tmp/git-friendly.sh
bash /tmp/git-friendly.sh ~/bin
rm /tmp/git-friendly.sh

# https://github.com/isaacs/nave
# needs npm, obviously.
# TODO: I think i'd rather curl down the nave.sh, symlink it into /bin and use that for initial node install.
#npm install -g nave
brew install n

# https://github.com/rupa/z
# z, oh how i love you
mkdir -p ~/dotfiles/z
curl https://raw.github.com/rupa/z/master/z.sh > ~/dotfiles/z/z.sh
chmod +x ~/dotfiles/z/z.sh

# add this to the bash_profile file if it aint there.
#   . ~/code/z/z.sh

#cd ~/code
#git clone git://github.com/dronir/SpotifyControl.git

# chrome canary as default
# on a mac you can set chrome canary as your default inside of Safari preferences :)

npm install -g yo gulp grunt-cli jshint browserify generator-webapp generator-gulp-webapp
