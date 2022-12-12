# Fix OpenVPN connectivity issue to VPNBook servers

## Having this issue when connecting to any Free VPNbook server?
### Receiving issues like this...
![Issue](https://github.com/1KevinFigueroa/openvpn-issues-vpnbook/blob/main/images/OpenVPN_issue_VPNbook.png)

<p>Over the last several weeks I have come accross individuals having issues with OpenVPN connecting to ![VPNbook](https://www.vpnbook.com/freevpn) server.  </p>

# Solution:
1. Download and unzip an VPNbook server bundle
2. Download fix-vpnbook.sh into the directory where VPNbook certificates were downloaded.
3. Execute fix-vpnbook.sh and follow the prompts
4. Upon the completion of the bash script "fix-vpnbook.sh", your newly vpnbook certificate should
   now have the appropriate configuration setting add to your certificate.
5. Use OpenVPN to connect to VPNbook server using Connect to VPNbook server  

You should now be connect to a VPNbook server
