# ServiceLocationBulkUpdateServicesContextDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_matching_service_locations** | **int** |  | [optional]
**counts_by_utility_type** | [**List[ServiceLocationBulkUpdateServicesContextCountByUtilityTypeDTO]**](ServiceLocationBulkUpdateServicesContextCountByUtilityTypeDTO.md) |  | [optional]
**utility_type_combinations_on_service_locations** | **List[List[UtilityType]]** |  |

## Example

```python
from masterdata_client.models.service_location_bulk_update_services_context_dto import ServiceLocationBulkUpdateServicesContextDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceLocationBulkUpdateServicesContextDTO from a JSON string
service_location_bulk_update_services_context_dto_instance = ServiceLocationBulkUpdateServicesContextDTO.from_json(json)
# print the JSON string representation of the object
print(ServiceLocationBulkUpdateServicesContextDTO.to_json())

# convert the object into a dict
service_location_bulk_update_services_context_dto_dict = service_location_bulk_update_services_context_dto_instance.to_dict()
# create an instance of ServiceLocationBulkUpdateServicesContextDTO from a dict
service_location_bulk_update_services_context_dto_from_dict = ServiceLocationBulkUpdateServicesContextDTO.from_dict(service_location_bulk_update_services_context_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
