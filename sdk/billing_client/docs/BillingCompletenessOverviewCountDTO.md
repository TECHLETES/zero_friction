# BillingCompletenessOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** |  | [optional] 
**waiting** | **int** |  | [optional] 
**input_missing** | **int** |  | [optional] 
**manually_corrected** | **int** |  | [optional] 
**previous_still_open** | **int** |  | [optional] 
**missing_advances** | **int** |  | [optional] 

## Example

```python
from billing_client.models.billing_completeness_overview_count_dto import BillingCompletenessOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BillingCompletenessOverviewCountDTO from a JSON string
billing_completeness_overview_count_dto_instance = BillingCompletenessOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(BillingCompletenessOverviewCountDTO.to_json())

# convert the object into a dict
billing_completeness_overview_count_dto_dict = billing_completeness_overview_count_dto_instance.to_dict()
# create an instance of BillingCompletenessOverviewCountDTO from a dict
billing_completeness_overview_count_dto_from_dict = BillingCompletenessOverviewCountDTO.from_dict(billing_completeness_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


