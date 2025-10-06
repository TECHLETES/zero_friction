# ServiceConsumptionValueDTO

Represents a single consumption value with its time period

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | **float** | The consumption value | [optional] 
**start_date_time** | **datetime** | Start date and time of the consumption period | [optional] 
**end_date_time** | **datetime** | End date and time of the consumption period | [optional] 

## Example

```python
from metering_client.models.service_consumption_value_dto import ServiceConsumptionValueDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceConsumptionValueDTO from a JSON string
service_consumption_value_dto_instance = ServiceConsumptionValueDTO.from_json(json)
# print the JSON string representation of the object
print(ServiceConsumptionValueDTO.to_json())

# convert the object into a dict
service_consumption_value_dto_dict = service_consumption_value_dto_instance.to_dict()
# create an instance of ServiceConsumptionValueDTO from a dict
service_consumption_value_dto_from_dict = ServiceConsumptionValueDTO.from_dict(service_consumption_value_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


