# ApiResponseDTOOfint


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **int** |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**success** | **bool** |  | [optional]
**applicable_entities_count** | **int** |  | [optional]
**requested_entities_count** | **int** |  | [optional]
**succeeded_entities_count** | **int** |  | [optional]
**is_synchronous** | **bool** |  | [optional]

## Example

```python
from metering_client.models.api_response_dto_ofint import ApiResponseDTOOfint

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfint from a JSON string
api_response_dto_ofint_instance = ApiResponseDTOOfint.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfint.to_json())

# convert the object into a dict
api_response_dto_ofint_dict = api_response_dto_ofint_instance.to_dict()
# create an instance of ApiResponseDTOOfint from a dict
api_response_dto_ofint_from_dict = ApiResponseDTOOfint.from_dict(api_response_dto_ofint_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
