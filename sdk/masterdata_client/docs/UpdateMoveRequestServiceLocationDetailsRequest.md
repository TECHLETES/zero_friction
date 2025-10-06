# UpdateMoveRequestServiceLocationDetailsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**services** | [**List[MoveRequestServiceLocationServiceDetailsRequest]**](MoveRequestServiceLocationServiceDetailsRequest.md) |  | [optional] 
**internal_id** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.update_move_request_service_location_details_request import UpdateMoveRequestServiceLocationDetailsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateMoveRequestServiceLocationDetailsRequest from a JSON string
update_move_request_service_location_details_request_instance = UpdateMoveRequestServiceLocationDetailsRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateMoveRequestServiceLocationDetailsRequest.to_json())

# convert the object into a dict
update_move_request_service_location_details_request_dict = update_move_request_service_location_details_request_instance.to_dict()
# create an instance of UpdateMoveRequestServiceLocationDetailsRequest from a dict
update_move_request_service_location_details_request_from_dict = UpdateMoveRequestServiceLocationDetailsRequest.from_dict(update_move_request_service_location_details_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


