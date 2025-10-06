# ServiceLocationServiceDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_identifier** | **str** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 

## Example

```python
from masterdata_client.models.service_location_service_details_dto import ServiceLocationServiceDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceLocationServiceDetailsDTO from a JSON string
service_location_service_details_dto_instance = ServiceLocationServiceDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(ServiceLocationServiceDetailsDTO.to_json())

# convert the object into a dict
service_location_service_details_dto_dict = service_location_service_details_dto_instance.to_dict()
# create an instance of ServiceLocationServiceDetailsDTO from a dict
service_location_service_details_dto_from_dict = ServiceLocationServiceDetailsDTO.from_dict(service_location_service_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


