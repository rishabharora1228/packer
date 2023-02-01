sudo apt -y update
sudo apt install openjdk-18-jre-headless -y
sudo apt  install golang-go -y
git clone https://github.com/opstree/OT-Microservices.git
echo "###############################################################
#                        OT-Microservices                     #
###############################################################
#                  Welcome to OT-Microservices                #
#       All connections are monitored and recorded.           #
#  Disconnect IMMEDIATELY if you are not an authorized user!  #
###############################################################
" > welcome
cat /home/azureuser/welcome | sudo tee -a /etc/issue.net > /dev/null
echo 'Banner /etc/issue.net' | sudo tee -a /etc/ssh/sshd_config > /dev/null
sudo systemctl restart ssh.service
