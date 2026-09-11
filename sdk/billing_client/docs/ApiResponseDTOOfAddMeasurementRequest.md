# ApiResponseDTOOfAddMeasurementRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AddMeasurementRequest**](AddMeasurementRequest.md) |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**success** | **bool** |  | [optional]
**applicable_entities_count** | **int** |  | [optional]
**requested_entities_count** | **int** |  | [optional]
**succeeded_entities_count** | **int** |  | [optional]
**is_synchronous** | **bool** |  | [optional]

## Example

```python
from billing_client.models.api_response_dtoof_add_measurement_request import ApiResponseDTOOfAddMeasurementRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfAddMeasurementRequest from a JSON string
api_response_dtoof_add_measurement_request_instance = ApiResponseDTOOfAddMeasurementRequest.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfAddMeasurementRequest.to_json())

# convert the object into a dict
api_response_dtoof_add_measurement_request_dict = api_response_dtoof_add_measurement_request_instance.to_dict()
# create an instance of ApiResponseDTOOfAddMeasurementRequest from a dict
api_response_dtoof_add_measurement_request_from_dict = ApiResponseDTOOfAddMeasurementRequest.from_dict(api_response_dtoof_add_measurement_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
