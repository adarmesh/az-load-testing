# Azure login
az login

# Create rg
az group create --name az2006-rg --location eastus

# Create webapp
az appservice plan create --name az2006-plan --resource-group az2006-rg --sku S1
az webapp create --name az2006app26168 --resource-group az2006-rg --plan az2006-plan


