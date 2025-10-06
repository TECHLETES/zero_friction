# ServiceConsumptionGetDateRangeDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**min_production_day_start_utc** | **datetime** |  | [optional] 
**max_production_day_end_utc** | **datetime** |  | [optional] 

## Example

```python
from metering_client.models.service_consumption_get_date_range_dto import ServiceConsumptionGetDateRangeDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceConsumptionGetDateRangeDTO from a JSON string
service_consumption_get_date_range_dto_instance = ServiceConsumptionGetDateRangeDTO.from_json(json)
# print the JSON string representation of the object
print(ServiceConsumptionGetDateRangeDTO.to_json())

# convert the object into a dict
service_consumption_get_date_range_dto_dict = service_consumption_get_date_range_dto_instance.to_dict()
# create an instance of ServiceConsumptionGetDateRangeDTO from a dict
service_consumption_get_date_range_dto_from_dict = ServiceConsumptionGetDateRangeDTO.from_dict(service_consumption_get_date_range_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


