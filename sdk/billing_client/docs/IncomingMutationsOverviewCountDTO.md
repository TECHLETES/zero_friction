# IncomingMutationsOverviewCountDTO

Provides an overview of incoming mutation counts by their type.  This DTO contains aggregated counts of different types of mutations.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** | The total number of incoming mutations. | [optional] 
**bank_transfers** | **int** | The number of bank transfer mutations. | [optional] 
**reversals** | **int** | The number of reversal mutations. | [optional] 
**bank_confirmations** | **int** | The number of bank confirmation mutations. | [optional] 
**resolve_issues** | **int** | The number of mutations that have issues requiring resolution. | [optional] 

## Example

```python
from billing_client.models.incoming_mutations_overview_count_dto import IncomingMutationsOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingMutationsOverviewCountDTO from a JSON string
incoming_mutations_overview_count_dto_instance = IncomingMutationsOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingMutationsOverviewCountDTO.to_json())

# convert the object into a dict
incoming_mutations_overview_count_dto_dict = incoming_mutations_overview_count_dto_instance.to_dict()
# create an instance of IncomingMutationsOverviewCountDTO from a dict
incoming_mutations_overview_count_dto_from_dict = IncomingMutationsOverviewCountDTO.from_dict(incoming_mutations_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


