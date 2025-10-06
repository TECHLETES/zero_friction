# BilledServiceDTO

Represents a service being billed under a contract.  This DTO contains information about the service, its location, and supply period.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**utility_type** | [**UtilityType**](UtilityType.md) | The type of utility being provided. | [optional] 
**service_location_id** | **str** | The unique identifier of the service location. | [optional] 
**supply_start_date_time** | **datetime** | The start date and time of the service supply period. | [optional] 
**supply_end_date_time** | **datetime** | The end date and time of the service supply period. | [optional] 
**external_identifier** | **str** | An external identifier for the service. | [optional] 

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


