# AddContractServiceEstimatedConsumptionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**consumer_group_id** | **str** |  |
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  |
**metering_type** | [**MeteringType**](MeteringType.md) |  |
**direction** | [**Direction**](Direction.md) |  | [optional]

## Example

```python
from masterdata_client.models.add_contract_service_estimated_consumption_request import AddContractServiceEstimatedConsumptionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AddContractServiceEstimatedConsumptionRequest from a JSON string
add_contract_service_estimated_consumption_request_instance = AddContractServiceEstimatedConsumptionRequest.from_json(json)
# print the JSON string representation of the object
print(AddContractServiceEstimatedConsumptionRequest.to_json())

# convert the object into a dict
add_contract_service_estimated_consumption_request_dict = add_contract_service_estimated_consumption_request_instance.to_dict()
# create an instance of AddContractServiceEstimatedConsumptionRequest from a dict
add_contract_service_estimated_consumption_request_from_dict = AddContractServiceEstimatedConsumptionRequest.from_dict(add_contract_service_estimated_consumption_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
