# BulkTriggerBillingCompletenessRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional]
**var_query_params** | [**GetBillingCompletenessQueryParams**](GetBillingCompletenessQueryParams.md) |  | [optional]
**quick_filter** | **str** |  | [optional]
**only_advances** | **bool** |  | [optional]
**recalculate_if_needed** | **bool** |  | [optional]
**advance_until_date_time** | **datetime** |  | [optional]
**override_estimated_measurement_creation** | **bool** |  | [optional]

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
