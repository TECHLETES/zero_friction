# CreateContractServiceEstimatedConsumptionRequest


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
from masterdata_client.models.create_contract_service_estimated_consumption_request import CreateContractServiceEstimatedConsumptionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateContractServiceEstimatedConsumptionRequest from a JSON string
create_contract_service_estimated_consumption_request_instance = CreateContractServiceEstimatedConsumptionRequest.from_json(json)
# print the JSON string representation of the object
print(CreateContractServiceEstimatedConsumptionRequest.to_json())

# convert the object into a dict
create_contract_service_estimated_consumption_request_dict = create_contract_service_estimated_consumption_request_instance.to_dict()
# create an instance of CreateContractServiceEstimatedConsumptionRequest from a dict
create_contract_service_estimated_consumption_request_from_dict = CreateContractServiceEstimatedConsumptionRequest.from_dict(create_contract_service_estimated_consumption_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


