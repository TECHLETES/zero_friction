# InputMissingDetailsDTO

Represents details about missing input data

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reason** | [**InputMissingReason**](InputMissingReason.md) | Reason why input data is missing | [optional] 
**extra_info** | **str** | Additional information about the missing input | [optional] 

## Example

```python
from billing_client.models.input_missing_details_dto import InputMissingDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of InputMissingDetailsDTO from a JSON string
input_missing_details_dto_instance = InputMissingDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(InputMissingDetailsDTO.to_json())

# convert the object into a dict
input_missing_details_dto_dict = input_missing_details_dto_instance.to_dict()
# create an instance of InputMissingDetailsDTO from a dict
input_missing_details_dto_from_dict = InputMissingDetailsDTO.from_dict(input_missing_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


