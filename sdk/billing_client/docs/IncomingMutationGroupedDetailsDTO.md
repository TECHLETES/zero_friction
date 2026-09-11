# IncomingMutationGroupedDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **int** |  | [optional]
**amount** | **float** |  | [optional]

## Example

```python
from billing_client.models.incoming_mutation_grouped_details_dto import IncomingMutationGroupedDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingMutationGroupedDetailsDTO from a JSON string
incoming_mutation_grouped_details_dto_instance = IncomingMutationGroupedDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingMutationGroupedDetailsDTO.to_json())

# convert the object into a dict
incoming_mutation_grouped_details_dto_dict = incoming_mutation_grouped_details_dto_instance.to_dict()
# create an instance of IncomingMutationGroupedDetailsDTO from a dict
incoming_mutation_grouped_details_dto_from_dict = IncomingMutationGroupedDetailsDTO.from_dict(incoming_mutation_grouped_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
