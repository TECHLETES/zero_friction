# ServiceConsumptionSumRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**location_ids** | **List[str]** |  | [optional] 
**quick_filter** | **str** |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**sum_by_utility_type** | **bool** |  | [optional] 

## Example

```python
from metering_client.models.service_consumption_sum_request import ServiceConsumptionSumRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceConsumptionSumRequest from a JSON string
service_consumption_sum_request_instance = ServiceConsumptionSumRequest.from_json(json)
# print the JSON string representation of the object
print(ServiceConsumptionSumRequest.to_json())

# convert the object into a dict
service_consumption_sum_request_dict = service_consumption_sum_request_instance.to_dict()
# create an instance of ServiceConsumptionSumRequest from a dict
service_consumption_sum_request_from_dict = ServiceConsumptionSumRequest.from_dict(service_consumption_sum_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


