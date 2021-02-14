# Fedora Automated Post Install Script

## Install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/lucasqlm/linux-post-install/feat/fedora-33/start.sh)"

## Run
Clone this repository and run the playbook as your user
```bash
ansible-playbook -K workstation.yml
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

MOZ_GTK_TITLEBAR_DECORATION=system firefox
gnome-themes-extra
 apt install packagekit-gtk3-module

libcanberra-gtk3-module

- name: Install x86 Compilers (Required for STM32 Programming)
      become: yes
      package:
        name: "{{ packages }}"
      vars:
        packages:
        - glibc-devel
        - glibc-devel.i686


        - nmap
        - aircrack-ng


