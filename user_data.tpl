<powershell>
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install awscli -y
choco install eksctl -y
choco install kubernetes-cli -y
choco install kubernetes-helm -y
choco install putty -y
</powershell>
