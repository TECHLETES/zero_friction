# RequiredQuantityValidationErrorDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reason** | [**InputMissingReason**](InputMissingReason.md) |  | [optional]
**error** | **int** |  | [optional]
**problem_entity** | [**ReasonEntityDTO**](ReasonEntityDTO.md) |  | [optional]
**impacted_entity** | [**ImpactedEntityDTO**](ImpactedEntityDTO.md) |  | [optional]
**related_entities** | [**List[RelatedEntityDTO]**](RelatedEntityDTO.md) |  | [optional]

## Example

```python
from billing_client.models.required_quantity_validation_error_dto import RequiredQuantityValidationErrorDTO

# TODO update the JSON string below
json = "{}"
# create an instance of RequiredQuantityValidationErrorDTO from a JSON string
required_quantity_validation_error_dto_instance = RequiredQuantityValidationErrorDTO.from_json(json)
# print the JSON string representation of the object
print(RequiredQuantityValidationErrorDTO.to_json())

# convert the object into a dict
required_quantity_validation_error_dto_dict = required_quantity_validation_error_dto_instance.to_dict()
# create an instance of RequiredQuantityValidationErrorDTO from a dict
required_quantity_validation_error_dto_from_dict = RequiredQuantityValidationErrorDTO.from_dict(required_quantity_validation_error_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
