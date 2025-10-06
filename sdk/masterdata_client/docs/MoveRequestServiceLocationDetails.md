# MoveRequestServiceLocationDetails


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**services** | [**List[MoveRequestServiceLocationServiceDetailsRequest]**](MoveRequestServiceLocationServiceDetailsRequest.md) |  | [optional] 
**internal_id** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.move_request_service_location_details import MoveRequestServiceLocationDetails

# TODO update the JSON string below
json = "{}"
# create an instance of MoveRequestServiceLocationDetails from a JSON string
move_request_service_location_details_instance = MoveRequestServiceLocationDetails.from_json(json)
# print the JSON string representation of the object
print(MoveRequestServiceLocationDetails.to_json())

# convert the object into a dict
move_request_service_location_details_dict = move_request_service_location_details_instance.to_dict()
# create an instance of MoveRequestServiceLocationDetails from a dict
move_request_service_location_details_from_dict = MoveRequestServiceLocationDetails.from_dict(move_request_service_location_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


