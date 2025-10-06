# MoveRequestServiceLocationServiceDetailsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_identifier** | **str** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 

## Example

```python
from masterdata_client.models.move_request_service_location_service_details_request import MoveRequestServiceLocationServiceDetailsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of MoveRequestServiceLocationServiceDetailsRequest from a JSON string
move_request_service_location_service_details_request_instance = MoveRequestServiceLocationServiceDetailsRequest.from_json(json)
# print the JSON string representation of the object
print(MoveRequestServiceLocationServiceDetailsRequest.to_json())

# convert the object into a dict
move_request_service_location_service_details_request_dict = move_request_service_location_service_details_request_instance.to_dict()
# create an instance of MoveRequestServiceLocationServiceDetailsRequest from a dict
move_request_service_location_service_details_request_from_dict = MoveRequestServiceLocationServiceDetailsRequest.from_dict(move_request_service_location_service_details_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


