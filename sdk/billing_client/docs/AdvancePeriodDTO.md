# AdvancePeriodDTO

Represents an advance payment period

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **datetime** | Start date and time of the advance period | [optional] 
**end_date_time** | **datetime** | End date and time of the advance period | [optional] 
**advance_amount_excl_vat** | **float** | Amount of the advance payment excluding VAT | [optional] 
**invoice_id** | **str** | Unique identifier of the invoice | [optional] 
**invoice_num** | **str** | Invoice number | [optional] 
**invoice_date** | **datetime** | Date of the invoice | [optional] 
**sent_status** | [**SentStatus**](SentStatus.md) | Current status of the invoice sending | [optional] 
**paid** | **bool** | Indicates if the advance has been paid | [optional] 
**automatically_deleted** | **bool** | Indicates if the advance was automatically deleted | [optional] 
**manually_deleted** | **bool** | Indicates if the advance was manually deleted | [optional] 

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


