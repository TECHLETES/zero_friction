# ApiResponseDTOOfListOfAggregatedConsumptionsByMeterDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[AggregatedConsumptionsByMeterDTO]**](AggregatedConsumptionsByMeterDTO.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from metering_client.models.api_response_dtoof_list_of_aggregated_consumptions_by_meter_dto import ApiResponseDTOOfListOfAggregatedConsumptionsByMeterDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfListOfAggregatedConsumptionsByMeterDTO from a JSON string
api_response_dtoof_list_of_aggregated_consumptions_by_meter_dto_instance = ApiResponseDTOOfListOfAggregatedConsumptionsByMeterDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfListOfAggregatedConsumptionsByMeterDTO.to_json())

# convert the object into a dict
api_response_dtoof_list_of_aggregated_consumptions_by_meter_dto_dict = api_response_dtoof_list_of_aggregated_consumptions_by_meter_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfListOfAggregatedConsumptionsByMeterDTO from a dict
api_response_dtoof_list_of_aggregated_consumptions_by_meter_dto_from_dict = ApiResponseDTOOfListOfAggregatedConsumptionsByMeterDTO.from_dict(api_response_dtoof_list_of_aggregated_consumptions_by_meter_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


