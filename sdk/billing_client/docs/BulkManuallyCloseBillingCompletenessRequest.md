# BulkManuallyCloseBillingCompletenessRequest

Represents a bulk request to manually close multiple billing completeness records.  This request allows closing multiple billing completeness records in a single operation.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** | Indicates if only validation should be performed without actually closing the records.  When true, the system will only validate if the records can be closed without making any changes. | [optional] 
**var_query_params** | [**GetBillingCompletenessQueryParams**](GetBillingCompletenessQueryParams.md) | Query parameters to filter the billing completeness records to process.  This allows specifying which records should be included in the bulk operation. | [optional] 
**quick_filter** | **str** | Quick filter string to filter billing completeness records.  This provides a simple way to filter records without using complex query parameters. | [optional] 

## Example

```python
from billing_client.models.bulk_manually_close_billing_completeness_request import BulkManuallyCloseBillingCompletenessRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkManuallyCloseBillingCompletenessRequest from a JSON string
bulk_manually_close_billing_completeness_request_instance = BulkManuallyCloseBillingCompletenessRequest.from_json(json)
# print the JSON string representation of the object
print(BulkManuallyCloseBillingCompletenessRequest.to_json())

# convert the object into a dict
bulk_manually_close_billing_completeness_request_dict = bulk_manually_close_billing_completeness_request_instance.to_dict()
# create an instance of BulkManuallyCloseBillingCompletenessRequest from a dict
bulk_manually_close_billing_completeness_request_from_dict = BulkManuallyCloseBillingCompletenessRequest.from_dict(bulk_manually_close_billing_completeness_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


