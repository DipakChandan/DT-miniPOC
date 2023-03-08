<a href="https://docker.com">
    <img src="https://raw.githubusercontent.com/DipakChandan/DT-miniPOC/assets/docker_logo.png" alt="Docker logo" title="Docker" align="right" height="100" />
</a>
<a href="https://terraform.io">
    <img src="https://raw.githubusercontent.com/DipakChandan/DT-miniPOC/assets/terraform_logo.png" alt="Terraform logo" title="Terraform" align="right" height="100" />
</a>
<a href="https://minikube.sigs.k8s.io">
    <img src="https://raw.githubusercontent.com/DipakChandan/DT-miniPOC/assets/minikube_logo.png" alt="Minikube logo" title="Minikube" align="right" height="100" />
</a>
<a href="https://www.djangoproject.com">
    <img src="https://raw.githubusercontent.com/DipakChandan/DT-miniPOC/assets/django_logo.png" alt="Django logo" title="Django" align="right" height="100" />
</a>


## Information about this project
- There are two parts to this open source repository 
	- Part-1: To setup a local Kubernet (K8S) Cluster using Terraform + minikube for K8S cluster manager (Infrastructure-as-code)  
		- It has sample code for *How to develop Terraform Custom Provider*
		- It has modules for environment specific (Versionized to be implemented)
	- Part-2: To build a docker image with a file loader api and a dashboard (dashboard in progress)
		- Docker composer in place to upload future image (image versioning recommended)
		- Django framework implemented for the API and the application
- Feel free to explore the repo content, and add :star: or fork if you like the content
- Repo is open for contributions and if you want to contribute please read the **important notice** for contribution guidelines


## Basic requirement before exploring this repo
- Install Terraform module (Ref: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- Install Minikube (Ref: https://minikube.sigs.k8s.io/docs/start/)


## Setup your local K8S cluster in seconds 
- Clone the repo https://github.com/DipakChandan/DT-miniPOC to your local
- Inside DT-miniPOC run following step
- Setup cluster Refer to https://github.com/DipakChandan/DT-miniPOC/terraform/README.md

## Access your application 
-- http://127.0.0.1:8080
-- Also access through external IP 

## How to Load excell data to DB (Sql lite) through Data API pipeline

  Run following command:

  Syntax: /usr/local/bin/python3 load.py --file <filename>
	usage: load.py [-h] [--file FILE]

	Example:

 	cd DT-miniAI/etl_loader
 	/usr/local/bin/python3 load.py --file ../csv_io/DEM_Challenge_Section1_DATASET.xlsx

 	[Note: This is a default file in the repo. You can have your own file]

	
 ## How to check graph file

 	Above loading process will create a graph file under DT-miniAI/csv_io. Graph build part is in progress.

 ## To verify the data in table

	You can import DT-miniAI/db.sqlite3 file to DB Browser for SQL Lite

 ## Dashboard

 	In future release there will be a dashboard display in place with predective analytics graph. Code in progress ..




### Note to future contributers:


## Read before you start contributing to this repo
- Read [Contribution Guidelines](./CONTRIBUTING.md) before contributing to this repository!

- Read GitHub [Code Of Conduct guidelines](./CODE_OF_CONDUCT.md)before contributing to this repository!

- Feel free to pick up any of the open [Issues](https://github.com/DipakChandan/DT-miniPOC/issues) or create new issue using the [template](https://github.com/DipakChandan/DT-miniPOC/issues/new/choose)!


:computer: Happy contributing to the Community!!

**Finally, contributors profile link**

<a href="https://github.com/DipakChandan/DT-miniPOC/contribute">
 <img src="https://contrib.rocks/image?repo=DipakChandan/DT-miniPOC" />
</a>
