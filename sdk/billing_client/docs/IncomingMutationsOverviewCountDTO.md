# IncomingMutationsOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** |  | [optional] 
**bank_transfers** | **int** |  | [optional] 
**reversals** | **int** |  | [optional] 
**bank_confirmations** | **int** |  | [optional] 
**resolve_issues** | **int** |  | [optional] 

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


