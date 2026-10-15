# ApiResponseDTOOfPagedResponseModelDTOOfPropertyGroupReference


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**PagedResponseModelDTOOfPropertyGroupReference**](PagedResponseModelDTOOfPropertyGroupReference.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from metering_client.models.api_response_dtoof_paged_response_model_dtoof_property_group_reference import ApiResponseDTOOfPagedResponseModelDTOOfPropertyGroupReference

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfPagedResponseModelDTOOfPropertyGroupReference from a JSON string
api_response_dtoof_paged_response_model_dtoof_property_group_reference_instance = ApiResponseDTOOfPagedResponseModelDTOOfPropertyGroupReference.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfPagedResponseModelDTOOfPropertyGroupReference.to_json())

# convert the object into a dict
api_response_dtoof_paged_response_model_dtoof_property_group_reference_dict = api_response_dtoof_paged_response_model_dtoof_property_group_reference_instance.to_dict()
# create an instance of ApiResponseDTOOfPagedResponseModelDTOOfPropertyGroupReference from a dict
api_response_dtoof_paged_response_model_dtoof_property_group_reference_from_dict = ApiResponseDTOOfPagedResponseModelDTOOfPropertyGroupReference.from_dict(api_response_dtoof_paged_response_model_dtoof_property_group_reference_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


