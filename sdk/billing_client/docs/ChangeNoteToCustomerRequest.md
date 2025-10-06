# ChangeNoteToCustomerRequest

Represents a request to change the note to customer on an invoice.  This DTO is used to update the customer-facing notes or comments on an invoice.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**note_to_customer** | **str** | The new note or comment to be displayed to the customer on the invoice. | [optional] 

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


