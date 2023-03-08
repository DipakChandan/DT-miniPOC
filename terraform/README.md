
#Run following command to setup local K8S cluster 

# Initialize the setup
terraform init

# Validate code
terraform validate

# Make directory to store plan
mkdir -p .terraform/plan/development

# Create TF plan
terraform plan -var-file=vars/development.tfvars -out=.terraform/plan/development/apply.tfplan 

# Apply plan
terraform apply ".terraform/plan/development/apply.tfplan"

# Display resources
terraform show


############
# Now check K8S deployment based on default setting. You can change the value in vars/development.tfvars

kubectl get deployment -n dt-ns-minipoc  
kubectl get pods -n dt-ns-minipoc
kubectl get pods -o wide -A  


############
# To drop cluster
terraform apply -destroy -var-file=vars/development.tfvars  

