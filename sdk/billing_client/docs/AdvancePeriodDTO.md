# AdvancePeriodDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **datetime** |  | [optional]
**end_date_time** | **datetime** |  | [optional]
**advance_amount_excl_vat** | **float** |  | [optional]
**advance_amount_incl_vat** | **float** |  | [optional]
**invoice_id** | **str** |  | [optional]
**invoice_num** | **str** |  | [optional]
**invoice_date** | **datetime** |  | [optional]
**sent_status** | [**SentStatus**](SentStatus.md) |  | [optional]
**paid** | **bool** |  | [optional]
**automatically_deleted** | **bool** |  | [optional]
**manually_deleted** | **bool** |  | [optional]
**blocked_reason** | [**AdvancePeriodBlockedReason**](AdvancePeriodBlockedReason.md) |  | [optional]

## Example

```python
from billing_client.models.advance_period_dto import AdvancePeriodDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AdvancePeriodDTO from a JSON string
advance_period_dto_instance = AdvancePeriodDTO.from_json(json)
# print the JSON string representation of the object
print(AdvancePeriodDTO.to_json())

# convert the object into a dict
advance_period_dto_dict = advance_period_dto_instance.to_dict()
# create an instance of AdvancePeriodDTO from a dict
advance_period_dto_from_dict = AdvancePeriodDTO.from_dict(advance_period_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
