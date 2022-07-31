<h1 align="center">CI/CD pipeline to deploy app (still in progress)</h1>

<h2 align="center">Infrastructure</h2>

<div id="header" align="center">
  <img src="" width="200"/>
</div>

# 

## Requirements :


## Project schema:

![project.png](images/project.png)

## Steps :

### 1. 

```bash

```
<p align="center">
  <img src="images/repo.png" width="500" height="230" title="hover text">
</p>


### 2. Create the infrastructure using Terraform

- Network components
- Firewalls
- Service accounts
- Bastion - vm
- GKE

### 3. Configure the bastion - vm

```bash
#install google-cloud-sdk
sudo apt-get install apt-transport-https ca-certificates gnupg

echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] \
https://packages.cloud.google.com/apt cloud-sdk main" \
| sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

curl https://packages.cloud.google.com/apt/doc/apt-key.gpg \
| sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

sudo apt update
sudo apt install google-cloud-sdk

#install kubectl
sudo apt-get install kubectl

#connect to the gke master
sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin
gcloud container clusters get-credentials cluster-name \
--zone europe-west1-b --project project-id
```

### 4. Create deployments and services using kubectl :

![k8s.png](images/k8s.png)

### 5. Run the app using loadbalancer ip

![loadbalancer](images/loadbalancer.png)

<p align="center">
  <img src="images/app.png" width="500" height="230" title="hover text">
</p>
