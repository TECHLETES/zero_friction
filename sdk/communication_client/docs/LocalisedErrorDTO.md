# LocalisedErrorDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | [**ErrorCode**](ErrorCode.md) |  | [optional] 
**correlation_id** | **str** |  | [optional] 
**message** | **str** |  | [optional] 
**message_values** | [**List[LocalisedErrorDTOMessageValue]**](LocalisedErrorDTOMessageValue.md) |  | [optional] 

## Example

```python
from communication_client.models.localised_error_dto import LocalisedErrorDTO

# TODO update the JSON string below
json = "{}"
# create an instance of LocalisedErrorDTO from a JSON string
localised_error_dto_instance = LocalisedErrorDTO.from_json(json)
# print the JSON string representation of the object
print(LocalisedErrorDTO.to_json())

# convert the object into a dict
localised_error_dto_dict = localised_error_dto_instance.to_dict()
# create an instance of LocalisedErrorDTO from a dict
localised_error_dto_from_dict = LocalisedErrorDTO.from_dict(localised_error_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


