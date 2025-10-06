# OrganizationDTOPagedResponseModelDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**OrganizationDTOPagedResponseModelDTO**](OrganizationDTOPagedResponseModelDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.organization_dto_paged_response_model_dto_api_response_dto import OrganizationDTOPagedResponseModelDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationDTOPagedResponseModelDTOApiResponseDTO from a JSON string
organization_dto_paged_response_model_dto_api_response_dto_instance = OrganizationDTOPagedResponseModelDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(OrganizationDTOPagedResponseModelDTOApiResponseDTO.to_json())

# convert the object into a dict
organization_dto_paged_response_model_dto_api_response_dto_dict = organization_dto_paged_response_model_dto_api_response_dto_instance.to_dict()
# create an instance of OrganizationDTOPagedResponseModelDTOApiResponseDTO from a dict
organization_dto_paged_response_model_dto_api_response_dto_from_dict = OrganizationDTOPagedResponseModelDTOApiResponseDTO.from_dict(organization_dto_paged_response_model_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


