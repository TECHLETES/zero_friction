# BulkChangePaymentDetailsRequest

Represents a bulk request to change payment details for multiple invoices.  This DTO allows updating payment details for multiple invoices in a single operation.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**new_payment_method** | [**PaymentMethod**](PaymentMethod.md) | The new payment method to be used for the invoice. | [optional] 
**collection_date** | **datetime** | The new date when the payment should be collected. | [optional] 
**only_validate** | **bool** | Indicates if only validation should be performed without actually changing the payment details.  When true, the system will only validate if the changes can be made without making any updates. | [optional] 
**var_query_params** | [**GetInvoicesQueryParams**](GetInvoicesQueryParams.md) | Query parameters to filter the invoices to be updated. | [optional] 
**quick_filter** | **str** | Quick filter string to filter invoices without using complex query parameters. | [optional] 

## Example

```python
from billing_client.models.bulk_change_payment_details_request import BulkChangePaymentDetailsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkChangePaymentDetailsRequest from a JSON string
bulk_change_payment_details_request_instance = BulkChangePaymentDetailsRequest.from_json(json)
# print the JSON string representation of the object
print(BulkChangePaymentDetailsRequest.to_json())

# convert the object into a dict
bulk_change_payment_details_request_dict = bulk_change_payment_details_request_instance.to_dict()
# create an instance of BulkChangePaymentDetailsRequest from a dict
bulk_change_payment_details_request_from_dict = BulkChangePaymentDetailsRequest.from_dict(bulk_change_payment_details_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


