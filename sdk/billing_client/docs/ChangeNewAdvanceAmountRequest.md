# ChangeNewAdvanceAmountRequest

Represents a request to change the advance amount for an invoice.  This DTO is used to update the advance payment amount that will be charged to the customer.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**new_advance_amount_incl_vat** | **float** | The new advance amount including VAT to be charged to the customer. | [optional] 

## Example

```python
from billing_client.models.change_new_advance_amount_request import ChangeNewAdvanceAmountRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeNewAdvanceAmountRequest from a JSON string
change_new_advance_amount_request_instance = ChangeNewAdvanceAmountRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeNewAdvanceAmountRequest.to_json())

# convert the object into a dict
change_new_advance_amount_request_dict = change_new_advance_amount_request_instance.to_dict()
# create an instance of ChangeNewAdvanceAmountRequest from a dict
change_new_advance_amount_request_from_dict = ChangeNewAdvanceAmountRequest.from_dict(change_new_advance_amount_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


