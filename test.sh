sudo apt-get install python3
curl -O https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py --user
pip install awsebcli --upgrade --user
echo export PATH=\"$pybase/bin:\$PATH\" >> ~/.bash_profile
