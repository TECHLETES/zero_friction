# ChangeNoteToCustomerRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**note_to_customer** | **str** |  | [optional] 

## Example

```python
from billing_client.models.change_note_to_customer_request import ChangeNoteToCustomerRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeNoteToCustomerRequest from a JSON string
change_note_to_customer_request_instance = ChangeNoteToCustomerRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeNoteToCustomerRequest.to_json())

# convert the object into a dict
change_note_to_customer_request_dict = change_note_to_customer_request_instance.to_dict()
# create an instance of ChangeNoteToCustomerRequest from a dict
change_note_to_customer_request_from_dict = ChangeNoteToCustomerRequest.from_dict(change_note_to_customer_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


