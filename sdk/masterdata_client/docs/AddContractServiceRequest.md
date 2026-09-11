# AddContractServiceRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**utility_type** | [**UtilityType**](UtilityType.md) |  | 
**estimated_consumption** | [**AddContractServiceEstimatedConsumptionRequest**](AddContractServiceEstimatedConsumptionRequest.md) |  | 

## Example

```python
from masterdata_client.models.add_contract_service_request import AddContractServiceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AddContractServiceRequest from a JSON string
add_contract_service_request_instance = AddContractServiceRequest.from_json(json)
# print the JSON string representation of the object
print(AddContractServiceRequest.to_json())

# convert the object into a dict
add_contract_service_request_dict = add_contract_service_request_instance.to_dict()
# create an instance of AddContractServiceRequest from a dict
add_contract_service_request_from_dict = AddContractServiceRequest.from_dict(add_contract_service_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


