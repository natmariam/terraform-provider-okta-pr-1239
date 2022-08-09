# PR 1239 Okta Terraform `network_zone` data source paging limitation 

https://github.com/okta/terraform-provider-okta/pull/1239

How to duplicate okta terraform `network_zone` **Maximum of 20 data source limitation**

## File Structure 

* |_ `/terraform`              - containing 2 terraform projects
* |______`/mock-zones`         - terraform project to mock required network zones
* |______`/data-source-zones`  - terraform project to duplicate error when data sourcing the mocked network zones

## Steps

### pre-requisite

> `export` *OKTA_API_TOKEN*, *OKTA_ORG_NAME*, and *OKTA_BASE_URL* environment variables

1. terraform init `mock-zones` project
2. terraform plan `mock-zones` project
3. terraform apply `mock-zones` project *(this should create the network zones in your okta instance)*
4. terraform init `data-source-zones` project
5. terraform plan `data-source-zones` project

### Result

```
 .....
 .....
 Error: failed to find network zone: network zone with name 'zone_990' does not exist
 
   with data.okta_network_zone.pr1239--sourced-network-zone_990,
   on data--network-zone.tf line 55, in data "okta_network_zone" "pr1239--sourced-network-zone_990":
   55: data "okta_network_zone" "pr1239--sourced-network-zone_990" 
```