# Block ICMP Timestamp Requests (Type 13)
New-NetFirewallRule -DisplayName "Block ICMP Timestamp Requests" -Protocol ICMPv4 -IcmpType 13 -Action Block

# Block ICMP Timestamp Replies (Type 14)
New-NetFirewallRule -DisplayName "Block ICMP Timestamp Replies" -Protocol ICMPv4 -IcmpType 14 -Action Block

# Verify the rules
Get-NetFirewallRule -DisplayName "Block ICMP Timestamp Requests"
Get-NetFirewallRule -DisplayName "Block ICMP Timestamp Replies"

# List all ICMP related rules
Get-NetFirewallRule | Where-Object { $_.DisplayName -like "*ICMP*" }
