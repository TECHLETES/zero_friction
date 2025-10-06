# UpdateMoveRequestMeasurementDetailsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**measurements** | [**List[MoveRequestMeasurementDetails]**](MoveRequestMeasurementDetails.md) |  | [optional] 

## Example

```python
from masterdata_client.models.update_move_request_measurement_details_request import UpdateMoveRequestMeasurementDetailsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateMoveRequestMeasurementDetailsRequest from a JSON string
update_move_request_measurement_details_request_instance = UpdateMoveRequestMeasurementDetailsRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateMoveRequestMeasurementDetailsRequest.to_json())

# convert the object into a dict
update_move_request_measurement_details_request_dict = update_move_request_measurement_details_request_instance.to_dict()
# create an instance of UpdateMoveRequestMeasurementDetailsRequest from a dict
update_move_request_measurement_details_request_from_dict = UpdateMoveRequestMeasurementDetailsRequest.from_dict(update_move_request_measurement_details_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


