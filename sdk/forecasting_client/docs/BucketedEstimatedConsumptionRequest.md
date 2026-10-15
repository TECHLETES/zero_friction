# BucketedEstimatedConsumptionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_id** | **str** |  | [optional] 
**service_location_ids** | **List[str]** |  | [optional] 
**buckets** | [**List[DateRange]**](DateRange.md) |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | 

## Example

```python
from forecasting_client.models.bucketed_estimated_consumption_request import BucketedEstimatedConsumptionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BucketedEstimatedConsumptionRequest from a JSON string
bucketed_estimated_consumption_request_instance = BucketedEstimatedConsumptionRequest.from_json(json)
# print the JSON string representation of the object
print(BucketedEstimatedConsumptionRequest.to_json())

# convert the object into a dict
bucketed_estimated_consumption_request_dict = bucketed_estimated_consumption_request_instance.to_dict()
# create an instance of BucketedEstimatedConsumptionRequest from a dict
bucketed_estimated_consumption_request_from_dict = BucketedEstimatedConsumptionRequest.from_dict(bucketed_estimated_consumption_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


