# ApiResponseDTOOfProductDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**ProductDTO**](ProductDTO.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.api_response_dtoof_product_dto import ApiResponseDTOOfProductDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfProductDTO from a JSON string
api_response_dtoof_product_dto_instance = ApiResponseDTOOfProductDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfProductDTO.to_json())

# convert the object into a dict
api_response_dtoof_product_dto_dict = api_response_dtoof_product_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfProductDTO from a dict
api_response_dtoof_product_dto_from_dict = ApiResponseDTOOfProductDTO.from_dict(api_response_dtoof_product_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


