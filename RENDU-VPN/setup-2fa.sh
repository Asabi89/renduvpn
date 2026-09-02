#!/bin/bash
apt install libpam-google-authenticator -y
echo 'auth required pam_google_authenticator.so nullok' > /etc/pam.d/openvpn
echo 'account required pam_permit.so' >> /etc/pam.d/openvpn
