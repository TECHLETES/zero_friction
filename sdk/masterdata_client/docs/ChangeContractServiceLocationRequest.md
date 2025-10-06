# ChangeContractServiceLocationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_location_id** | **str** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**external_identifier** | **str** |  | [optional] 
**estimated_consumptions** | [**List[ChangeContractServiceEstimatedConsumptionRequest]**](ChangeContractServiceEstimatedConsumptionRequest.md) |  | [optional] 

## Example

```python
from masterdata_client.models.change_contract_service_location_request import ChangeContractServiceLocationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeContractServiceLocationRequest from a JSON string
change_contract_service_location_request_instance = ChangeContractServiceLocationRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeContractServiceLocationRequest.to_json())

# convert the object into a dict
change_contract_service_location_request_dict = change_contract_service_location_request_instance.to_dict()
# create an instance of ChangeContractServiceLocationRequest from a dict
change_contract_service_location_request_from_dict = ChangeContractServiceLocationRequest.from_dict(change_contract_service_location_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


