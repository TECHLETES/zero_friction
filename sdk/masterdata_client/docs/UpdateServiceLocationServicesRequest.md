# UpdateServiceLocationServicesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**services_to_add** | [**List[UtilityType]**](UtilityType.md) |  |
**services_to_remove** | [**List[UtilityType]**](UtilityType.md) |  |
**only_validate** | **bool** |  | [optional]
**var_query_params** | [**GetServiceLocationsQueryParams**](GetServiceLocationsQueryParams.md) |  | [optional]
**quick_filter** | **str** |  | [optional]

## Example

```python
from masterdata_client.models.update_service_location_services_request import UpdateServiceLocationServicesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateServiceLocationServicesRequest from a JSON string
update_service_location_services_request_instance = UpdateServiceLocationServicesRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateServiceLocationServicesRequest.to_json())

# convert the object into a dict
update_service_location_services_request_dict = update_service_location_services_request_instance.to_dict()
# create an instance of UpdateServiceLocationServicesRequest from a dict
update_service_location_services_request_from_dict = UpdateServiceLocationServicesRequest.from_dict(update_service_location_services_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
