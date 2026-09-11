# BilledServiceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional]
**service_location_id** | **str** |  | [optional]
**property_group_id** | **str** |  | [optional]
**supply_start_date_time** | **datetime** |  | [optional]
**supply_end_date_time** | **datetime** |  | [optional]
**external_identifier** | **str** |  | [optional]

## Example

```python
from billing_client.models.billed_service_dto import BilledServiceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BilledServiceDTO from a JSON string
billed_service_dto_instance = BilledServiceDTO.from_json(json)
# print the JSON string representation of the object
print(BilledServiceDTO.to_json())

# convert the object into a dict
billed_service_dto_dict = billed_service_dto_instance.to_dict()
# create an instance of BilledServiceDTO from a dict
billed_service_dto_from_dict = BilledServiceDTO.from_dict(billed_service_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
