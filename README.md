# Fix OpenVPN connectivity issue to VPNBOOK servers

### Having this issue when connecting to any Free VPNBOOK server?

This Free VPN service provide by VPNbook.com will allow a user to download 8 different types of VPN bundles, which allows the user to connect to VPN server using OpenVPN.[VPNbook](https://www.vpnbook.com/freevpn) provides different VPN bundles pack that users can download and each VPN bundles contain about 3 or 4 different certificates allowing users to connect to VPN servers in Poland, Denmark, France, US, and Canada. 

Over the last several weeks I have came accross individuals having the same issues with OpenVPN connecting to VPN server provided by [VPNbook](https://www.vpnbook.com/freevpn). The ***ISSUE*** I notice individuals are experiencing compression troubles, deprecated option with --cipher, and cannot load inline certificate. However, when attempting to connect to any VPNBOOK VPN server the follow error message appears...

![Issue](https://github.com/1KevinFigueroa/openvpn-issues-vpnbook/blob/main/images/OpenVPN_issue_VPNbook.png)


# Two solutions correcting connectivity to VPNBOOK servers.
## BASH script Solution:
1. Download and unzip an VPNbook server bundle @ [VPNbook](https://www.vpnbook.com/freevpn)

2. Download and unzip fix-vpnbook.sh into the same directory where the VPNBOOK certificates were downloaded.

3. Execute fix-vpnbook.sh and follow the prompts

4. Upon the completion of the bash script "fix-vpnbook.sh", your newly vpnbook certificate should now have the appropriate configuration setting add to your certificate.

5. Use OpenVPN to connect to VPNbook server using Connect to VPNbook server  


------------------------------

## Manual Solution:
1. Open a certificate and locate the line entree "cipher AES-128-CBC", which should be line 12 or 13.

2. Insert the following three lines after the line entree "cipher AES-128.CBC:
   * data-ciphers AES-256-CBC:AES-256-GCM:AES-128-GCM:CHACHA20-POLY1305
   * remote-cert-tls server
   * tls-cipher "DEFAULT:@SECLEVEL=0"

|CA config file before | CA config file after
|-------|------|
|![Config Before](https://github.com/1KevinFigueroa/openvpn-issues-vpnbook/blob/main/images/manualInsert1.png) |![Config After](https://github.com/1KevinFigueroa/openvpn-issues-vpnbook/blob/main/images/manualInsert2.png) |
 

3. Save the edits made and now use OpenVPN and the edited file to connect to VPN server.

<p align="center">
You should now be able to connect to a VPNBOOK servers!
</p>
