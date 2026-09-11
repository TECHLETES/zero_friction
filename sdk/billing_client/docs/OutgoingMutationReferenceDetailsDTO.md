# OutgoingMutationReferenceDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reference_type** | [**OutgoingMutationType**](OutgoingMutationType.md) |  | [optional]
**reference_id** | **str** |  | [optional]
**parameters** | [**OutgoingMutationReferenceParametersDTO**](OutgoingMutationReferenceParametersDTO.md) |  | [optional]

## Example

```python
from billing_client.models.outgoing_mutation_reference_details_dto import OutgoingMutationReferenceDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OutgoingMutationReferenceDetailsDTO from a JSON string
outgoing_mutation_reference_details_dto_instance = OutgoingMutationReferenceDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(OutgoingMutationReferenceDetailsDTO.to_json())

# convert the object into a dict
outgoing_mutation_reference_details_dto_dict = outgoing_mutation_reference_details_dto_instance.to_dict()
# create an instance of OutgoingMutationReferenceDetailsDTO from a dict
outgoing_mutation_reference_details_dto_from_dict = OutgoingMutationReferenceDetailsDTO.from_dict(outgoing_mutation_reference_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
