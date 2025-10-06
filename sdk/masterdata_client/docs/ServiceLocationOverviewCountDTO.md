# ServiceLocationOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** |  | [optional] 
**supplied** | **int** |  | [optional] 
**unsupplied** | **int** |  | [optional] 

## Example

```python
from masterdata_client.models.service_location_overview_count_dto import ServiceLocationOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceLocationOverviewCountDTO from a JSON string
service_location_overview_count_dto_instance = ServiceLocationOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(ServiceLocationOverviewCountDTO.to_json())

# convert the object into a dict
service_location_overview_count_dto_dict = service_location_overview_count_dto_instance.to_dict()
# create an instance of ServiceLocationOverviewCountDTO from a dict
service_location_overview_count_dto_from_dict = ServiceLocationOverviewCountDTO.from_dict(service_location_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


