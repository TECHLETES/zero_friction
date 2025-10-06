# IncomingMutationDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[IncomingMutationDTO]**](IncomingMutationDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from billing_client.models.incoming_mutation_dto_paged_response_model_dto import IncomingMutationDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingMutationDTOPagedResponseModelDTO from a JSON string
incoming_mutation_dto_paged_response_model_dto_instance = IncomingMutationDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingMutationDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
incoming_mutation_dto_paged_response_model_dto_dict = incoming_mutation_dto_paged_response_model_dto_instance.to_dict()
# create an instance of IncomingMutationDTOPagedResponseModelDTO from a dict
incoming_mutation_dto_paged_response_model_dto_from_dict = IncomingMutationDTOPagedResponseModelDTO.from_dict(incoming_mutation_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


