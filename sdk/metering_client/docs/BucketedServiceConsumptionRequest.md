# BucketedServiceConsumptionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_location_ids** | **List[str]** |  | [optional] 
**buckets** | [**List[DateRange]**](DateRange.md) |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 

## Example

```python
from metering_client.models.bucketed_service_consumption_request import BucketedServiceConsumptionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BucketedServiceConsumptionRequest from a JSON string
bucketed_service_consumption_request_instance = BucketedServiceConsumptionRequest.from_json(json)
# print the JSON string representation of the object
print(BucketedServiceConsumptionRequest.to_json())

# convert the object into a dict
bucketed_service_consumption_request_dict = bucketed_service_consumption_request_instance.to_dict()
# create an instance of BucketedServiceConsumptionRequest from a dict
bucketed_service_consumption_request_from_dict = BucketedServiceConsumptionRequest.from_dict(bucketed_service_consumption_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


