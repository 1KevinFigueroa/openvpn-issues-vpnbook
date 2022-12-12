# Fix OpenVPN connectivity issue to VPNBOOK servers

## Having this issue when connecting to any Free VPNBOOK server?


Over the last several weeks I have came accross individuals having the same issues with OpenVPN connecting to VPN server provided by [VPNbook](https://www.vpnbook.com/freevpn). This Free VPN service provide by VPNbook.com will allow a user to download 8 different types of VPN bundles, which allows the user to connect to VPN server using OpenVPN. However, when attempting to connect to any VPNBOOK VPN server the follow error message appears...

![Issue](https://github.com/1KevinFigueroa/openvpn-issues-vpnbook/blob/main/images/OpenVPN_issue_VPNbook.png)

[VPNbook](https://www.vpnbook.com/freevpn) provides different VPN bundles pack that users can download and each VPN bundles contain about 3 or 4 different certificates allowing users to connect to VPN servers in Poland, Denmark, France, US, and Canada. The "ISSUE" I notice are individuals are experiencing compression troubles, deprecated option with --cipher, and cannot load inline certificate.


# Solution:
1. Download and unzip an VPNbook server bundle @ [VPNbook](https://www.vpnbook.com/freevpn)
2. Download fix-vpnbook.sh into the directory where VPNbook certificates were downloaded.
3. Execute fix-vpnbook.sh and follow the prompts
4. Upon the completion of the bash script "fix-vpnbook.sh", your newly vpnbook certificate should
   now have the appropriate configuration setting add to your certificate.
5. Use OpenVPN to connect to VPNbook server using Connect to VPNbook server  

You should now be connect to a VPNbook server
