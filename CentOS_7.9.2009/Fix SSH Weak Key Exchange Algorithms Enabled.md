#  How to fix `[Low] SSH Weak Key Exchange Algorithms Enabled`


## backup sshd_config
```bash
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
```
## Edit 
```bash
sudo vi /etc/ssh/sshd_config
```
## insert KexAlgorithms 
```bash
# Key exchange algorithms
KexAlgorithms curve25519-sha256,curve25519-sha256@libssh.org,diffie-hellman-group-exchange-sha256,diffie-hellman-group14-sha256
```
Restart server sshd
```bash
sudo systemctl restart sshd
```
