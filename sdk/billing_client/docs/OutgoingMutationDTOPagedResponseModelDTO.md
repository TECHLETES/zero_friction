# OutgoingMutationDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[OutgoingMutationDTO]**](OutgoingMutationDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from billing_client.models.outgoing_mutation_dto_paged_response_model_dto import OutgoingMutationDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OutgoingMutationDTOPagedResponseModelDTO from a JSON string
outgoing_mutation_dto_paged_response_model_dto_instance = OutgoingMutationDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(OutgoingMutationDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
outgoing_mutation_dto_paged_response_model_dto_dict = outgoing_mutation_dto_paged_response_model_dto_instance.to_dict()
# create an instance of OutgoingMutationDTOPagedResponseModelDTO from a dict
outgoing_mutation_dto_paged_response_model_dto_from_dict = OutgoingMutationDTOPagedResponseModelDTO.from_dict(outgoing_mutation_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


