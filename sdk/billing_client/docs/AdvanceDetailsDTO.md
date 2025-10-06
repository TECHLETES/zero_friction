# AdvanceDetailsDTO

Represents details about advance payments for a billing relation.  This DTO contains information about advance amounts, frequencies, and change history.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**advance_amount** | **float** | The current advance payment amount. | [optional] 
**original_amount** | **float** | The original advance amount used to calculate min and max ranges. | [optional] 
**changed_by** | [**AdvanceAmountChangedBy**](AdvanceAmountChangedBy.md) | Identifies who has last changed the advance amount. | [optional] 
**changed_by_user_id** | **str** | The unique identifier of the user who last changed the advance amount. | [optional] 
**changed_date** | **datetime** | The date and time when the advance amount was last changed. | [optional] 
**advance_amount_excl_vat** | **float** | The advance payment amount excluding VAT. | [optional] 
**advance_frequency** | [**AdvanceFrequency**](AdvanceFrequency.md) | The frequency at which advance payments are collected. | [optional] 

## Example

```python
from billing_client.models.advance_details_dto import AdvanceDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AdvanceDetailsDTO from a JSON string
advance_details_dto_instance = AdvanceDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(AdvanceDetailsDTO.to_json())

# convert the object into a dict
advance_details_dto_dict = advance_details_dto_instance.to_dict()
# create an instance of AdvanceDetailsDTO from a dict
advance_details_dto_from_dict = AdvanceDetailsDTO.from_dict(advance_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


