# EstimatedAdvanceAmountResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**min_advance_amount** | **int** |  | [optional] 
**max_advance_amount** | **int** |  | [optional] 
**estimated_advance_amount** | **int** |  | [optional] 
**estimation_failed_reason** | [**AdvanceCalculationFallbackReason**](AdvanceCalculationFallbackReason.md) |  | [optional] 

## Example

```python
from billing_client.models.estimated_advance_amount_response_dto import EstimatedAdvanceAmountResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EstimatedAdvanceAmountResponseDTO from a JSON string
estimated_advance_amount_response_dto_instance = EstimatedAdvanceAmountResponseDTO.from_json(json)
# print the JSON string representation of the object
print(EstimatedAdvanceAmountResponseDTO.to_json())

# convert the object into a dict
estimated_advance_amount_response_dto_dict = estimated_advance_amount_response_dto_instance.to_dict()
# create an instance of EstimatedAdvanceAmountResponseDTO from a dict
estimated_advance_amount_response_dto_from_dict = EstimatedAdvanceAmountResponseDTO.from_dict(estimated_advance_amount_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


