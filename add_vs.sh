sudo apt-get install figlet -y > /dev/null
figlet lucmsilva
echo -e "VSCode install script for Ubuntu/Debian - by lucmsilva"
echo -e "https://github.com/lucmsilva651/addvs"
echo -e "Adding Microsoft repository to system...\n"
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
echo -e "\nRemoving temporary files..."
rm -f packages.microsoft.gpg
echo -e "\nInstalling Visual Studio Code...\n"
sudo apt install code