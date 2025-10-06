# ChangeCustomerCommunicationPreferencesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**communication_preferences** | [**CustomerCommunicationPreferencesRequest**](CustomerCommunicationPreferencesRequest.md) |  | [optional] 

## Example

```python
from masterdata_client.models.change_customer_communication_preferences_request import ChangeCustomerCommunicationPreferencesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeCustomerCommunicationPreferencesRequest from a JSON string
change_customer_communication_preferences_request_instance = ChangeCustomerCommunicationPreferencesRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeCustomerCommunicationPreferencesRequest.to_json())

# convert the object into a dict
change_customer_communication_preferences_request_dict = change_customer_communication_preferences_request_instance.to_dict()
# create an instance of ChangeCustomerCommunicationPreferencesRequest from a dict
change_customer_communication_preferences_request_from_dict = ChangeCustomerCommunicationPreferencesRequest.from_dict(change_customer_communication_preferences_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


