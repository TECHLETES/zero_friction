# GetPrepaymentMetersInstalledOnServiceLocationsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_location_ids** | **List[str]** |  | [optional] 
**supply_period** | [**DateRange**](DateRange.md) |  | [optional] 

## Example

```python
from masterdata_client.models.get_prepayment_meters_installed_on_service_locations_request import GetPrepaymentMetersInstalledOnServiceLocationsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of GetPrepaymentMetersInstalledOnServiceLocationsRequest from a JSON string
get_prepayment_meters_installed_on_service_locations_request_instance = GetPrepaymentMetersInstalledOnServiceLocationsRequest.from_json(json)
# print the JSON string representation of the object
print(GetPrepaymentMetersInstalledOnServiceLocationsRequest.to_json())

# convert the object into a dict
get_prepayment_meters_installed_on_service_locations_request_dict = get_prepayment_meters_installed_on_service_locations_request_instance.to_dict()
# create an instance of GetPrepaymentMetersInstalledOnServiceLocationsRequest from a dict
get_prepayment_meters_installed_on_service_locations_request_from_dict = GetPrepaymentMetersInstalledOnServiceLocationsRequest.from_dict(get_prepayment_meters_installed_on_service_locations_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


