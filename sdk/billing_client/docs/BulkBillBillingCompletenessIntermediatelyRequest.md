# BulkBillBillingCompletenessIntermediatelyRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetBillingCompletenessQueryParams**](GetBillingCompletenessQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 

## Example

```python
from billing_client.models.bulk_bill_billing_completeness_intermediately_request import BulkBillBillingCompletenessIntermediatelyRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkBillBillingCompletenessIntermediatelyRequest from a JSON string
bulk_bill_billing_completeness_intermediately_request_instance = BulkBillBillingCompletenessIntermediatelyRequest.from_json(json)
# print the JSON string representation of the object
print(BulkBillBillingCompletenessIntermediatelyRequest.to_json())

# convert the object into a dict
bulk_bill_billing_completeness_intermediately_request_dict = bulk_bill_billing_completeness_intermediately_request_instance.to_dict()
# create an instance of BulkBillBillingCompletenessIntermediatelyRequest from a dict
bulk_bill_billing_completeness_intermediately_request_from_dict = BulkBillBillingCompletenessIntermediatelyRequest.from_dict(bulk_bill_billing_completeness_intermediately_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


