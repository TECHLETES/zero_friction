# PropertyGroupReferencePagedResponseModelDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**PropertyGroupReferencePagedResponseModelDTO**](PropertyGroupReferencePagedResponseModelDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from metering_client.models.property_group_reference_paged_response_model_dto_api_response_dto import PropertyGroupReferencePagedResponseModelDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PropertyGroupReferencePagedResponseModelDTOApiResponseDTO from a JSON string
property_group_reference_paged_response_model_dto_api_response_dto_instance = PropertyGroupReferencePagedResponseModelDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(PropertyGroupReferencePagedResponseModelDTOApiResponseDTO.to_json())

# convert the object into a dict
property_group_reference_paged_response_model_dto_api_response_dto_dict = property_group_reference_paged_response_model_dto_api_response_dto_instance.to_dict()
# create an instance of PropertyGroupReferencePagedResponseModelDTOApiResponseDTO from a dict
property_group_reference_paged_response_model_dto_api_response_dto_from_dict = PropertyGroupReferencePagedResponseModelDTOApiResponseDTO.from_dict(property_group_reference_paged_response_model_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


