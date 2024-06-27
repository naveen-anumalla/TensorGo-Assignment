#Update Package Lists
sudo apt-get update

#Install Dependencies
sudo apt-get install -y wget apt-transport-https gnupg lsb-release

#Add Trivy Repository

wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo apt-key add -
echo "deb https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main" | sudo tee -a /etc/apt/sources.list.d/trivy.list

#Install Trivy
sudo apt-get update
sudo apt-get install -y trivy
