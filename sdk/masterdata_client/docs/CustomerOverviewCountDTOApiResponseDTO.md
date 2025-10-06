# CustomerOverviewCountDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**CustomerOverviewCountDTO**](CustomerOverviewCountDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from masterdata_client.models.customer_overview_count_dto_api_response_dto import CustomerOverviewCountDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerOverviewCountDTOApiResponseDTO from a JSON string
customer_overview_count_dto_api_response_dto_instance = CustomerOverviewCountDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(CustomerOverviewCountDTOApiResponseDTO.to_json())

# convert the object into a dict
customer_overview_count_dto_api_response_dto_dict = customer_overview_count_dto_api_response_dto_instance.to_dict()
# create an instance of CustomerOverviewCountDTOApiResponseDTO from a dict
customer_overview_count_dto_api_response_dto_from_dict = CustomerOverviewCountDTOApiResponseDTO.from_dict(customer_overview_count_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


