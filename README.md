#Fix OpenVPN connectivity issue to VPNBook servers

##Having this issue when connecting to any Free VPNbook server?
###Receiving issues like this...
![Error Message]<img scr="https://github.com/1KevinFigueroa/openvpn-issues-vpnbook/blob/main/images/OpenVPN_issue_VPNbook.png">

#Solution:
Step1: Download and unzip an VPNbook server bundle
Step2: Download fix-vpnbook.sh into the directory where VPNbook certificates were downloaded.
Step3: execute fix-vpnbook.sh and follow the prompts
Step4: Upon the completion of the bash script "fix-vpnbook.sh", your newly vpnbook certificate should
       now have the appropriate configuration setting add to your certificate.
Step5: Use OpenVPN to connect to VPNbook server using Connect to VPNbook server  

You should now be connect to a VPNbook server
