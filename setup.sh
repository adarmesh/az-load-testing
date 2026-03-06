# Azure login
az login

# Create rg
az group create --name az2006-rg --location eastus

# Create webapp
az appservice plan create --name az2006-plan --resource-group az2006-rg --sku S1
az webapp create -g az2006-rg -p az2006-plan -n az2006app26168 --runtime "dotnet:8"
az webapp deployment slot create --name az2006app26168 --resource-group az2006-rg --slot staging


# Create load testing resource
az load create --name az2006loadtest --resource-group az2006-rg --location eastus