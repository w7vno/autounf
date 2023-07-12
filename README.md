# autounf
An instagram auto unfollow bot with instagram api.
You can see all the code so no need to worry about any kind of info logs.

Can work in Termux.

Note that, Automation in Instagram isn't welcomed. It may harm your account be carefull.

# Installation

Run this code to install autounf
```bash
git clone https://github.com/w7vno/autounf
cd autounf
chmod +x install.sh
./install.sh
```

This will add```unfollow```executable to your directory. Simply run it like shown.
## Usage example
```bash
./unfollow -u <username> -p <password>
```

This will start the tool. Every 4 minutes 20 unfollows.

If the code encounters an error with instagram,
it may throw```challange_required```or
```login_required```errors. This means instagram blocked the attempt to login. To fix this, login to instagram on your phone and follow the instructions on the screen.

Instagram may randomly log you out from your account. Just simply log back in.
### Dont over do it. You may lose your account!
