# CreateContractServiceLocationRequestBase


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_location_id** | **str** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**estimated_consumptions** | [**List[CreateContractServiceEstimatedConsumptionRequest]**](CreateContractServiceEstimatedConsumptionRequest.md) |  | [optional] 

## Example

```python
from masterdata_client.models.create_contract_service_location_request_base import CreateContractServiceLocationRequestBase

# TODO update the JSON string below
json = "{}"
# create an instance of CreateContractServiceLocationRequestBase from a JSON string
create_contract_service_location_request_base_instance = CreateContractServiceLocationRequestBase.from_json(json)
# print the JSON string representation of the object
print(CreateContractServiceLocationRequestBase.to_json())

# convert the object into a dict
create_contract_service_location_request_base_dict = create_contract_service_location_request_base_instance.to_dict()
# create an instance of CreateContractServiceLocationRequestBase from a dict
create_contract_service_location_request_base_from_dict = CreateContractServiceLocationRequestBase.from_dict(create_contract_service_location_request_base_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


