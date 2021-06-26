
# 
# https://wiki.debian.org/WHEEL/PAM
#

# 1. Install sudo
# > apt-get install sudo

# 2. Edit /etc/pam.d/su
# Uncomment thus line: # auth required pam_wheel.so

# 3. Add wheel group
# > /sbin/addgroup -system wheel

# 4. Add user(s) to wheel group
# > /sbin/adduser USER wheel

# 5. Edit /etc/sudoers and add this line:
# %wheel ALL=(ALL) ALL

addgroup --system wheel
