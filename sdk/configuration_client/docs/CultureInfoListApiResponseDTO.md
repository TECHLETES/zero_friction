# CultureInfoListApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**List[CultureInfo]**](CultureInfo.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.culture_info_list_api_response_dto import CultureInfoListApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CultureInfoListApiResponseDTO from a JSON string
culture_info_list_api_response_dto_instance = CultureInfoListApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(CultureInfoListApiResponseDTO.to_json())

# convert the object into a dict
culture_info_list_api_response_dto_dict = culture_info_list_api_response_dto_instance.to_dict()
# create an instance of CultureInfoListApiResponseDTO from a dict
culture_info_list_api_response_dto_from_dict = CultureInfoListApiResponseDTO.from_dict(culture_info_list_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


