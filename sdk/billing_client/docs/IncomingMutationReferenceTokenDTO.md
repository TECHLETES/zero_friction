# IncomingMutationReferenceTokenDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | **str** |  | [optional]
**start** | **int** |  | [optional]
**length** | **int** |  | [optional]
**kind** | [**IncomingMutationReferenceTokenKind**](IncomingMutationReferenceTokenKind.md) |  | [optional]

## Example

```python
from billing_client.models.incoming_mutation_reference_token_dto import IncomingMutationReferenceTokenDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingMutationReferenceTokenDTO from a JSON string
incoming_mutation_reference_token_dto_instance = IncomingMutationReferenceTokenDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingMutationReferenceTokenDTO.to_json())

# convert the object into a dict
incoming_mutation_reference_token_dto_dict = incoming_mutation_reference_token_dto_instance.to_dict()
# create an instance of IncomingMutationReferenceTokenDTO from a dict
incoming_mutation_reference_token_dto_from_dict = IncomingMutationReferenceTokenDTO.from_dict(incoming_mutation_reference_token_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
