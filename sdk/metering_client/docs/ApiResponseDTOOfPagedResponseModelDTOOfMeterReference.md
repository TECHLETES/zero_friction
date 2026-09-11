# ApiResponseDTOOfPagedResponseModelDTOOfMeterReference


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**PagedResponseModelDTOOfMeterReference**](PagedResponseModelDTOOfMeterReference.md) |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**success** | **bool** |  | [optional]
**applicable_entities_count** | **int** |  | [optional]
**requested_entities_count** | **int** |  | [optional]
**succeeded_entities_count** | **int** |  | [optional]
**is_synchronous** | **bool** |  | [optional]

## Example

```python
from metering_client.models.api_response_dtoof_paged_response_model_dtoof_meter_reference import ApiResponseDTOOfPagedResponseModelDTOOfMeterReference

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfPagedResponseModelDTOOfMeterReference from a JSON string
api_response_dtoof_paged_response_model_dtoof_meter_reference_instance = ApiResponseDTOOfPagedResponseModelDTOOfMeterReference.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfPagedResponseModelDTOOfMeterReference.to_json())

# convert the object into a dict
api_response_dtoof_paged_response_model_dtoof_meter_reference_dict = api_response_dtoof_paged_response_model_dtoof_meter_reference_instance.to_dict()
# create an instance of ApiResponseDTOOfPagedResponseModelDTOOfMeterReference from a dict
api_response_dtoof_paged_response_model_dtoof_meter_reference_from_dict = ApiResponseDTOOfPagedResponseModelDTOOfMeterReference.from_dict(api_response_dtoof_paged_response_model_dtoof_meter_reference_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
