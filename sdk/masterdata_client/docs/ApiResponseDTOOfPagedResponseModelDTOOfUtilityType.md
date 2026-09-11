# ApiResponseDTOOfPagedResponseModelDTOOfUtilityType


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**PagedResponseModelDTOOfUtilityType**](PagedResponseModelDTOOfUtilityType.md) |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**success** | **bool** |  | [optional]
**applicable_entities_count** | **int** |  | [optional]
**requested_entities_count** | **int** |  | [optional]
**succeeded_entities_count** | **int** |  | [optional]
**is_synchronous** | **bool** |  | [optional]

## Example

```python
from masterdata_client.models.api_response_dtoof_paged_response_model_dtoof_utility_type import ApiResponseDTOOfPagedResponseModelDTOOfUtilityType

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfPagedResponseModelDTOOfUtilityType from a JSON string
api_response_dtoof_paged_response_model_dtoof_utility_type_instance = ApiResponseDTOOfPagedResponseModelDTOOfUtilityType.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfPagedResponseModelDTOOfUtilityType.to_json())

# convert the object into a dict
api_response_dtoof_paged_response_model_dtoof_utility_type_dict = api_response_dtoof_paged_response_model_dtoof_utility_type_instance.to_dict()
# create an instance of ApiResponseDTOOfPagedResponseModelDTOOfUtilityType from a dict
api_response_dtoof_paged_response_model_dtoof_utility_type_from_dict = ApiResponseDTOOfPagedResponseModelDTOOfUtilityType.from_dict(api_response_dtoof_paged_response_model_dtoof_utility_type_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
