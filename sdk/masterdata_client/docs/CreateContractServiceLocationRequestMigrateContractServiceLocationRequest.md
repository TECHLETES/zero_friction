# CreateContractServiceLocationRequestMigrateContractServiceLocationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | 
**reference** | **str** |  | [optional] 
**service_location_external_id** | **str** |  | [optional] 
**service_location_id** | **str** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**estimated_consumptions** | [**List[CreateContractServiceEstimatedConsumptionRequest]**](CreateContractServiceEstimatedConsumptionRequest.md) |  | [optional] 

## Example

```python
from masterdata_client.models.create_contract_service_location_request_migrate_contract_service_location_request import CreateContractServiceLocationRequestMigrateContractServiceLocationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateContractServiceLocationRequestMigrateContractServiceLocationRequest from a JSON string
create_contract_service_location_request_migrate_contract_service_location_request_instance = CreateContractServiceLocationRequestMigrateContractServiceLocationRequest.from_json(json)
# print the JSON string representation of the object
print(CreateContractServiceLocationRequestMigrateContractServiceLocationRequest.to_json())

# convert the object into a dict
create_contract_service_location_request_migrate_contract_service_location_request_dict = create_contract_service_location_request_migrate_contract_service_location_request_instance.to_dict()
# create an instance of CreateContractServiceLocationRequestMigrateContractServiceLocationRequest from a dict
create_contract_service_location_request_migrate_contract_service_location_request_from_dict = CreateContractServiceLocationRequestMigrateContractServiceLocationRequest.from_dict(create_contract_service_location_request_migrate_contract_service_location_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


