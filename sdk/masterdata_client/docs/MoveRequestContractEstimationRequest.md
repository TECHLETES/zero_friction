# MoveRequestContractEstimationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**metering_type** | [**MeteringType**](MeteringType.md) |  | [optional] 
**value** | **float** |  | [optional] 
**consumer_group_id** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.move_request_contract_estimation_request import MoveRequestContractEstimationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of MoveRequestContractEstimationRequest from a JSON string
move_request_contract_estimation_request_instance = MoveRequestContractEstimationRequest.from_json(json)
# print the JSON string representation of the object
print(MoveRequestContractEstimationRequest.to_json())

# convert the object into a dict
move_request_contract_estimation_request_dict = move_request_contract_estimation_request_instance.to_dict()
# create an instance of MoveRequestContractEstimationRequest from a dict
move_request_contract_estimation_request_from_dict = MoveRequestContractEstimationRequest.from_dict(move_request_contract_estimation_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


