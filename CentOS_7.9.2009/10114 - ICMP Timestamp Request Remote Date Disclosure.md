# 10114 - ICMP Timestamp Request Remote Date Disclosure
* Not disable ICMP Timestamp

# ICMP Timestamp Filtering with firewalld on CentOS

This guide provides instructions on how to prevent ICMP Timestamp requests and replies on a CentOS system using `firewalld`.

## Add iptables Rules

To drop ICMP Timestamp Requests (type 13) and Replies (type 14):

```bash
sudo iptables -A INPUT -p icmp --icmp-type 13 -j DROP
sudo iptables -A INPUT -p icmp --icmp-type 14 -j DROP
```

## Configure firewalld with Rich Rules
```bash
sudo firewall-cmd --permanent --add-rich-rule='rule protocol value=icmp icmp-type name=timestamp-request action=drop'
sudo firewall-cmd --permanent --add-rich-rule='rule protocol value=icmp icmp-type name=timestamp-reply action=drop'
```

## Reload firewalld
```
sudo firewall-cmd --reload
```

## Verification
`Use hping3 to verify if the ICMP Timestamp messages are successfully dropped:`
```
sudo hping3 -1 --icmp-ts -c 3 [target IP]
```
