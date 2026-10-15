# ApiResponseDTOOfCollectionFlowDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**CollectionFlowDTO**](CollectionFlowDTO.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.api_response_dtoof_collection_flow_dto import ApiResponseDTOOfCollectionFlowDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfCollectionFlowDTO from a JSON string
api_response_dtoof_collection_flow_dto_instance = ApiResponseDTOOfCollectionFlowDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfCollectionFlowDTO.to_json())

# convert the object into a dict
api_response_dtoof_collection_flow_dto_dict = api_response_dtoof_collection_flow_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfCollectionFlowDTO from a dict
api_response_dtoof_collection_flow_dto_from_dict = ApiResponseDTOOfCollectionFlowDTO.from_dict(api_response_dtoof_collection_flow_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


