# OutgoingMutationsOverviewCountDTO

Provides an overview of outgoing mutation counts by their type.  This DTO contains aggregated counts of different types of mutations.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** | The total number of outgoing mutations. | [optional] 
**invoices** | **int** | The number of invoice-related mutations. | [optional] 
**manual_entries** | **int** | The number of manually entered mutations. | [optional] 
**resolve_issues** | **int** | The number of mutations that have issues requiring resolution. | [optional] 

## Example

```python
from billing_client.models.outgoing_mutations_overview_count_dto import OutgoingMutationsOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OutgoingMutationsOverviewCountDTO from a JSON string
outgoing_mutations_overview_count_dto_instance = OutgoingMutationsOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(OutgoingMutationsOverviewCountDTO.to_json())

# convert the object into a dict
outgoing_mutations_overview_count_dto_dict = outgoing_mutations_overview_count_dto_instance.to_dict()
# create an instance of OutgoingMutationsOverviewCountDTO from a dict
outgoing_mutations_overview_count_dto_from_dict = OutgoingMutationsOverviewCountDTO.from_dict(outgoing_mutations_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


