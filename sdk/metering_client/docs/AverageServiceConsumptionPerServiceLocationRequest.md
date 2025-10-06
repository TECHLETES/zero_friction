# AverageServiceConsumptionPerServiceLocationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_location_ids** | **List[str]** |  | [optional] 

## Example

```python
from metering_client.models.average_service_consumption_per_service_location_request import AverageServiceConsumptionPerServiceLocationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AverageServiceConsumptionPerServiceLocationRequest from a JSON string
average_service_consumption_per_service_location_request_instance = AverageServiceConsumptionPerServiceLocationRequest.from_json(json)
# print the JSON string representation of the object
print(AverageServiceConsumptionPerServiceLocationRequest.to_json())

# convert the object into a dict
average_service_consumption_per_service_location_request_dict = average_service_consumption_per_service_location_request_instance.to_dict()
# create an instance of AverageServiceConsumptionPerServiceLocationRequest from a dict
average_service_consumption_per_service_location_request_from_dict = AverageServiceConsumptionPerServiceLocationRequest.from_dict(average_service_consumption_per_service_location_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


