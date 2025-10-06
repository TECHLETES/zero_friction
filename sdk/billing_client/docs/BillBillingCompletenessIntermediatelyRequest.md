# BillBillingCompletenessIntermediatelyRequest

Represents a request to perform intermediate billing for billing completeness

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**end_date_time** | **datetime** | Date and time when the intermediate billing period ends | [optional] 

## Example

```python
from billing_client.models.bill_billing_completeness_intermediately_request import BillBillingCompletenessIntermediatelyRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BillBillingCompletenessIntermediatelyRequest from a JSON string
bill_billing_completeness_intermediately_request_instance = BillBillingCompletenessIntermediatelyRequest.from_json(json)
# print the JSON string representation of the object
print(BillBillingCompletenessIntermediatelyRequest.to_json())

# convert the object into a dict
bill_billing_completeness_intermediately_request_dict = bill_billing_completeness_intermediately_request_instance.to_dict()
# create an instance of BillBillingCompletenessIntermediatelyRequest from a dict
bill_billing_completeness_intermediately_request_from_dict = BillBillingCompletenessIntermediatelyRequest.from_dict(bill_billing_completeness_intermediately_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


