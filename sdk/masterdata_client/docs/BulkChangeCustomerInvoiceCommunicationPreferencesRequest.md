# BulkChangeCustomerInvoiceCommunicationPreferencesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_communication_preferences** | [**List[CustomerInvoiceCommunicationPreferencesRequest]**](CustomerInvoiceCommunicationPreferencesRequest.md) |  | 
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetCustomersQueryParams**](GetCustomersQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.bulk_change_customer_invoice_communication_preferences_request import BulkChangeCustomerInvoiceCommunicationPreferencesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkChangeCustomerInvoiceCommunicationPreferencesRequest from a JSON string
bulk_change_customer_invoice_communication_preferences_request_instance = BulkChangeCustomerInvoiceCommunicationPreferencesRequest.from_json(json)
# print the JSON string representation of the object
print(BulkChangeCustomerInvoiceCommunicationPreferencesRequest.to_json())

# convert the object into a dict
bulk_change_customer_invoice_communication_preferences_request_dict = bulk_change_customer_invoice_communication_preferences_request_instance.to_dict()
# create an instance of BulkChangeCustomerInvoiceCommunicationPreferencesRequest from a dict
bulk_change_customer_invoice_communication_preferences_request_from_dict = BulkChangeCustomerInvoiceCommunicationPreferencesRequest.from_dict(bulk_change_customer_invoice_communication_preferences_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


