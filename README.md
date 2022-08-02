
<h1 align="center">ITI-Graduation-Project</h1>

<h2 align="center">Infrastructure</h2>




## Requirements :

### 1. Create infrastructure on GCP

### 2. Configure bastion-vm

### 3. Customize jenkins image and create jenkins deployment

![Untitled](images/Untitled.png)

## 1. Build infrastructure using Terraform

- Network components
- Firewalls
- Service accounts
- Bastion - vm
- GKE

```bash
Terraform apply
```

## 2. Configure bastion-vm

- apt update
- install gcloud sdk
- install kubectl

by ansible playbook :

```bash
ansible-playbook packages.yaml
```

## 3. Jenkins deployment

1. **Create custom image of jenkins with gcloud and kubectl** 

```docker
./jenkins_deployment/Dockerfile :

FROM jenkins/jenkins:lts
USER root
...
RUN apt-get install -y kubectl
...
RUN apt-get install google-cloud-sdk
...
RUN apt-get install google-cloud-sdk-gke-gcloud-auth-plugin
USER jenkins
```

1. **Build and push jenkins image to dockerhub :**

```bash
docker build . -t dockerhub/myimage:jenkinskube
docker push dockerhub/myimage:jenkinskube
```

## 4. C**reate jenkins deployment on the cluster :**

1. **Run ansible script**

```bash
ansible-playbook kubernetes.yaml
```

- Create namespace
- Create service account
- Create Persistent volume claim and storage class
- Create jenkins deployment
- Create load balancer service
- Create jenkins jnlp service

1. **Check the volume is bound to jenkins deployment** 

![Untitled](images/Untitled%201.png)

1. **Check deployment is running**
<p align="center">
<img src="images/Untitled%202.png" width="500" height="160" title="hover text">
</p>


1. **Get Loadbalancer External ip** 

![Untitled](images/Untitled%203.png)

1. **Access jenkins server**

![Untitled](images/Untitled%204.png)