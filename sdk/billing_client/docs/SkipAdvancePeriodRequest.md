# SkipAdvancePeriodRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **datetime** |  | 
**end_date_time** | **datetime** |  | 

## Example

```python
from billing_client.models.skip_advance_period_request import SkipAdvancePeriodRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SkipAdvancePeriodRequest from a JSON string
skip_advance_period_request_instance = SkipAdvancePeriodRequest.from_json(json)
# print the JSON string representation of the object
print(SkipAdvancePeriodRequest.to_json())

# convert the object into a dict
skip_advance_period_request_dict = skip_advance_period_request_instance.to_dict()
# create an instance of SkipAdvancePeriodRequest from a dict
skip_advance_period_request_from_dict = SkipAdvancePeriodRequest.from_dict(skip_advance_period_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


