# Fedora Automated Post Install Script

## Run
Clone this repository and run the playbook as your user
```bash
ansible-playbook -K post-install.yml
```

---

### TODO

#### OSTree
```bash
ostree admin unlock
```

#### Maybe
```bash
sudo dnf install util-linux-user
```

#### Icons
```bash 
# Icons, baixar e colocar nessa pasta
# ~/.local/share/icons

dnf copr enable dirkdavidis/papirus-icon-theme
dnf install papirus-icon-theme
```

#### Mozilla options
```bash
# ~/.mozilla/firefox/random.default/user.js
user_pref("widget.content.gtk-theme-override", "Adwaita:light");
user_pref("browser.tabs.drawInTitlebar", true);
```

#### Install awscli via pip
```bash
pip3 install awscli --upgrade --user
```

---

### References
https://fedoramagazine.org/using-ansible-setup-workstation/