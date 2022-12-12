# Fix OpenVPN connectivity issue to VPNBook servers

## Having this issue when connecting to any Free VPNbook server?


Over the last several weeks I have came accross individuals having the same issues with OpenVPN connecting to VPN server provided by [VPNbook](https://www.vpnbook.com/freevpn). This Free VPN service provide by VPNbook.com will allow a user to download 8 different types of VPN bundles, which allows the user to connect to VPN server using OpenVPN. However, when attempting to connect to a vpnbook VPN server the follow error message appears...
![Issue](https://github.com/1KevinFigueroa/openvpn-issues-vpnbook/blob/main/images/OpenVPN_issue_VPNbook.png)


# Solution:
1. Download and unzip an VPNbook server bundle
2. Download fix-vpnbook.sh into the directory where VPNbook certificates were downloaded.
3. Execute fix-vpnbook.sh and follow the prompts
4. Upon the completion of the bash script "fix-vpnbook.sh", your newly vpnbook certificate should
   now have the appropriate configuration setting add to your certificate.
5. Use OpenVPN to connect to VPNbook server using Connect to VPNbook server  

You should now be connect to a VPNbook server
