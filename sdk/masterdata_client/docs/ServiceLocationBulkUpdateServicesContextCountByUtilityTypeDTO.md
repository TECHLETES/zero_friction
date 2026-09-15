# ServiceLocationBulkUpdateServicesContextCountByUtilityTypeDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**service_locations_with_type** | **int** |  | [optional] 
**has_contract_without_end_date** | **bool** |  | [optional] 

## Example

```python
from masterdata_client.models.service_location_bulk_update_services_context_count_by_utility_type_dto import ServiceLocationBulkUpdateServicesContextCountByUtilityTypeDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceLocationBulkUpdateServicesContextCountByUtilityTypeDTO from a JSON string
service_location_bulk_update_services_context_count_by_utility_type_dto_instance = ServiceLocationBulkUpdateServicesContextCountByUtilityTypeDTO.from_json(json)
# print the JSON string representation of the object
print(ServiceLocationBulkUpdateServicesContextCountByUtilityTypeDTO.to_json())

# convert the object into a dict
service_location_bulk_update_services_context_count_by_utility_type_dto_dict = service_location_bulk_update_services_context_count_by_utility_type_dto_instance.to_dict()
# create an instance of ServiceLocationBulkUpdateServicesContextCountByUtilityTypeDTO from a dict
service_location_bulk_update_services_context_count_by_utility_type_dto_from_dict = ServiceLocationBulkUpdateServicesContextCountByUtilityTypeDTO.from_dict(service_location_bulk_update_services_context_count_by_utility_type_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


