# MeterStatusHistoryDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**meter_status** | [**MeterStatus**](MeterStatus.md) |  | [optional] 
**service_location_id** | **str** |  | [optional] 
**installed_at_address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**property_group** | [**PropertyGroupReferenceDTO**](PropertyGroupReferenceDTO.md) |  | [optional] 

## Example

```python
from masterdata_client.models.meter_status_history_dto import MeterStatusHistoryDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeterStatusHistoryDTO from a JSON string
meter_status_history_dto_instance = MeterStatusHistoryDTO.from_json(json)
# print the JSON string representation of the object
print(MeterStatusHistoryDTO.to_json())

# convert the object into a dict
meter_status_history_dto_dict = meter_status_history_dto_instance.to_dict()
# create an instance of MeterStatusHistoryDTO from a dict
meter_status_history_dto_from_dict = MeterStatusHistoryDTO.from_dict(meter_status_history_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


