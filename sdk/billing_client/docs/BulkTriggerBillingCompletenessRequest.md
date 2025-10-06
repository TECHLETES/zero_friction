# BulkTriggerBillingCompletenessRequest

Represents a bulk request to trigger billing completeness calculation for multiple items

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_advances** | **bool** | Indicates if only advance payments should be calculated | [optional] 
**recalculate_if_needed** | **bool** | Indicates if recalculation should be performed if needed | [optional] 
**advance_until_date_time** | **datetime** | Date and time until which advance payments should be calculated | [optional] 
**only_validate** | **bool** | Indicates if only validation should be performed without actual calculation | [optional] 
**var_query_params** | [**GetBillingCompletenessQueryParams**](GetBillingCompletenessQueryParams.md) | Query parameters to filter the items to process | [optional] 
**quick_filter** | **str** | Quick filter string to filter items | [optional] 

## Example

```python
from billing_client.models.bulk_trigger_billing_completeness_request import BulkTriggerBillingCompletenessRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkTriggerBillingCompletenessRequest from a JSON string
bulk_trigger_billing_completeness_request_instance = BulkTriggerBillingCompletenessRequest.from_json(json)
# print the JSON string representation of the object
print(BulkTriggerBillingCompletenessRequest.to_json())

# convert the object into a dict
bulk_trigger_billing_completeness_request_dict = bulk_trigger_billing_completeness_request_instance.to_dict()
# create an instance of BulkTriggerBillingCompletenessRequest from a dict
bulk_trigger_billing_completeness_request_from_dict = BulkTriggerBillingCompletenessRequest.from_dict(bulk_trigger_billing_completeness_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


