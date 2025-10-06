# ChangeCustomerContactDetailsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contact_entries** | [**List[ContactEntryRequest]**](ContactEntryRequest.md) |  | [optional] 

## Example

```python
from masterdata_client.models.change_customer_contact_details_request import ChangeCustomerContactDetailsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeCustomerContactDetailsRequest from a JSON string
change_customer_contact_details_request_instance = ChangeCustomerContactDetailsRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeCustomerContactDetailsRequest.to_json())

# convert the object into a dict
change_customer_contact_details_request_dict = change_customer_contact_details_request_instance.to_dict()
# create an instance of ChangeCustomerContactDetailsRequest from a dict
change_customer_contact_details_request_from_dict = ChangeCustomerContactDetailsRequest.from_dict(change_customer_contact_details_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


