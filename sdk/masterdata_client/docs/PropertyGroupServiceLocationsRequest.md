# PropertyGroupServiceLocationsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_locations** | **List[str]** |  |
**reference_date** | **date** |  | [optional]

## Example

```python
from masterdata_client.models.property_group_service_locations_request import PropertyGroupServiceLocationsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PropertyGroupServiceLocationsRequest from a JSON string
property_group_service_locations_request_instance = PropertyGroupServiceLocationsRequest.from_json(json)
# print the JSON string representation of the object
print(PropertyGroupServiceLocationsRequest.to_json())

# convert the object into a dict
property_group_service_locations_request_dict = property_group_service_locations_request_instance.to_dict()
# create an instance of PropertyGroupServiceLocationsRequest from a dict
property_group_service_locations_request_from_dict = PropertyGroupServiceLocationsRequest.from_dict(property_group_service_locations_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
