# CustomerCommunicationPreferencesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**culture** | **str** |  | [optional] 
**invoice_communication_preferences** | [**List[CustomerInvoiceCommunicationPreferencesRequest]**](CustomerInvoiceCommunicationPreferencesRequest.md) |  | [optional] 
**annual_statement_communication_preference** | [**CommunicationType**](CommunicationType.md) |  | [optional] 
**collection_flow_id** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.customer_communication_preferences_request import CustomerCommunicationPreferencesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerCommunicationPreferencesRequest from a JSON string
customer_communication_preferences_request_instance = CustomerCommunicationPreferencesRequest.from_json(json)
# print the JSON string representation of the object
print(CustomerCommunicationPreferencesRequest.to_json())

# convert the object into a dict
customer_communication_preferences_request_dict = customer_communication_preferences_request_instance.to_dict()
# create an instance of CustomerCommunicationPreferencesRequest from a dict
customer_communication_preferences_request_from_dict = CustomerCommunicationPreferencesRequest.from_dict(customer_communication_preferences_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


