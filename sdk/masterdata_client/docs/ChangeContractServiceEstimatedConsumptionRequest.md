# ChangeContractServiceEstimatedConsumptionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**consumer_group_id** | **str** |  | [optional] 
**value** | **float** |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**metering_type** | [**MeteringType**](MeteringType.md) |  | [optional] 
**is_manual_entry** | **bool** |  | [optional] 

## Example

```python
from masterdata_client.models.change_contract_service_estimated_consumption_request import ChangeContractServiceEstimatedConsumptionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeContractServiceEstimatedConsumptionRequest from a JSON string
change_contract_service_estimated_consumption_request_instance = ChangeContractServiceEstimatedConsumptionRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeContractServiceEstimatedConsumptionRequest.to_json())

# convert the object into a dict
change_contract_service_estimated_consumption_request_dict = change_contract_service_estimated_consumption_request_instance.to_dict()
# create an instance of ChangeContractServiceEstimatedConsumptionRequest from a dict
change_contract_service_estimated_consumption_request_from_dict = ChangeContractServiceEstimatedConsumptionRequest.from_dict(change_contract_service_estimated_consumption_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


