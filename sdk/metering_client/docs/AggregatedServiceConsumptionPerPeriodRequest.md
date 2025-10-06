# AggregatedServiceConsumptionPerPeriodRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_location_ids** | **List[str]** |  | [optional] 
**group_by_period** | [**AggregationFrequency**](AggregationFrequency.md) |  | [optional] 

## Example

```python
from metering_client.models.aggregated_service_consumption_per_period_request import AggregatedServiceConsumptionPerPeriodRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AggregatedServiceConsumptionPerPeriodRequest from a JSON string
aggregated_service_consumption_per_period_request_instance = AggregatedServiceConsumptionPerPeriodRequest.from_json(json)
# print the JSON string representation of the object
print(AggregatedServiceConsumptionPerPeriodRequest.to_json())

# convert the object into a dict
aggregated_service_consumption_per_period_request_dict = aggregated_service_consumption_per_period_request_instance.to_dict()
# create an instance of AggregatedServiceConsumptionPerPeriodRequest from a dict
aggregated_service_consumption_per_period_request_from_dict = AggregatedServiceConsumptionPerPeriodRequest.from_dict(aggregated_service_consumption_per_period_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


