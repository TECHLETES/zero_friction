# ServiceStatusHistoryDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**service_status** | [**ServiceStatus**](ServiceStatus.md) |  | [optional] 

## Example

```python
from masterdata_client.models.service_status_history_dto import ServiceStatusHistoryDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceStatusHistoryDTO from a JSON string
service_status_history_dto_instance = ServiceStatusHistoryDTO.from_json(json)
# print the JSON string representation of the object
print(ServiceStatusHistoryDTO.to_json())

# convert the object into a dict
service_status_history_dto_dict = service_status_history_dto_instance.to_dict()
# create an instance of ServiceStatusHistoryDTO from a dict
service_status_history_dto_from_dict = ServiceStatusHistoryDTO.from_dict(service_status_history_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


