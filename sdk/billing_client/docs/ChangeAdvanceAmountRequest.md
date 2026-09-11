# ChangeAdvanceAmountRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**new_advance_amount** | **float** |  |
**changed_by** | [**AdvanceAmountChangedBy**](AdvanceAmountChangedBy.md) |  |
**send_confirmation_email** | **bool** |  | [optional]

## Example

```python
from billing_client.models.change_advance_amount_request import ChangeAdvanceAmountRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeAdvanceAmountRequest from a JSON string
change_advance_amount_request_instance = ChangeAdvanceAmountRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeAdvanceAmountRequest.to_json())

# convert the object into a dict
change_advance_amount_request_dict = change_advance_amount_request_instance.to_dict()
# create an instance of ChangeAdvanceAmountRequest from a dict
change_advance_amount_request_from_dict = ChangeAdvanceAmountRequest.from_dict(change_advance_amount_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
