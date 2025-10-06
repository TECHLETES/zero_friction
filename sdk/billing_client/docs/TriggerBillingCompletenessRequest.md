# TriggerBillingCompletenessRequest

Represents a request to trigger billing completeness calculation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_advances** | **bool** | Indicates if only advance payments should be calculated | [optional] 
**recalculate_if_needed** | **bool** | Indicates if recalculation should be performed if needed | [optional] 
**advance_until_date_time** | **datetime** | Date and time until which advance payments should be calculated | [optional] 

## Example

```python
from billing_client.models.trigger_billing_completeness_request import TriggerBillingCompletenessRequest

# TODO update the JSON string below
json = "{}"
# create an instance of TriggerBillingCompletenessRequest from a JSON string
trigger_billing_completeness_request_instance = TriggerBillingCompletenessRequest.from_json(json)
# print the JSON string representation of the object
print(TriggerBillingCompletenessRequest.to_json())

# convert the object into a dict
trigger_billing_completeness_request_dict = trigger_billing_completeness_request_instance.to_dict()
# create an instance of TriggerBillingCompletenessRequest from a dict
trigger_billing_completeness_request_from_dict = TriggerBillingCompletenessRequest.from_dict(trigger_billing_completeness_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


