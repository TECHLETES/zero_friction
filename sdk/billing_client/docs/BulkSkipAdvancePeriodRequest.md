# BulkSkipAdvancePeriodRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional]
**var_query_params** | [**GetBillingCompletenessQueryParams**](GetBillingCompletenessQueryParams.md) |  | [optional]
**quick_filter** | **str** |  | [optional]
**start_date_time** | **datetime** |  | [optional]
**end_date_time** | **datetime** |  | [optional]

## Example

```python
from billing_client.models.bulk_skip_advance_period_request import BulkSkipAdvancePeriodRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkSkipAdvancePeriodRequest from a JSON string
bulk_skip_advance_period_request_instance = BulkSkipAdvancePeriodRequest.from_json(json)
# print the JSON string representation of the object
print(BulkSkipAdvancePeriodRequest.to_json())

# convert the object into a dict
bulk_skip_advance_period_request_dict = bulk_skip_advance_period_request_instance.to_dict()
# create an instance of BulkSkipAdvancePeriodRequest from a dict
bulk_skip_advance_period_request_from_dict = BulkSkipAdvancePeriodRequest.from_dict(bulk_skip_advance_period_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
