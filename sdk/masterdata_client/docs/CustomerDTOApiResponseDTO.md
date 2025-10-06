# CustomerDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**CustomerDTO**](CustomerDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from masterdata_client.models.customer_dto_api_response_dto import CustomerDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerDTOApiResponseDTO from a JSON string
customer_dto_api_response_dto_instance = CustomerDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(CustomerDTOApiResponseDTO.to_json())

# convert the object into a dict
customer_dto_api_response_dto_dict = customer_dto_api_response_dto_instance.to_dict()
# create an instance of CustomerDTOApiResponseDTO from a dict
customer_dto_api_response_dto_from_dict = CustomerDTOApiResponseDTO.from_dict(customer_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


