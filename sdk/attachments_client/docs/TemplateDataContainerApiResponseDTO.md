# TemplateDataContainerApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**TemplateDataContainer**](TemplateDataContainer.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from attachments_client.models.template_data_container_api_response_dto import TemplateDataContainerApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TemplateDataContainerApiResponseDTO from a JSON string
template_data_container_api_response_dto_instance = TemplateDataContainerApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(TemplateDataContainerApiResponseDTO.to_json())

# convert the object into a dict
template_data_container_api_response_dto_dict = template_data_container_api_response_dto_instance.to_dict()
# create an instance of TemplateDataContainerApiResponseDTO from a dict
template_data_container_api_response_dto_from_dict = TemplateDataContainerApiResponseDTO.from_dict(template_data_container_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


