# NumberSequenceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Gets or sets the unique identifier. | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) | Gets or sets the type of the entity. | [optional] 
**created_date_time** | **datetime** | Gets or sets the date and time when the entity was created. | [optional] 
**discriminator** | **str** | Gets or sets the discriminator value. | [optional] 
**etag** | **str** | Gets or sets the ETag value. | [optional] 
**require_attention** | **bool** | Gets a value indicating whether the entity requires attention. | [optional] [readonly] 
**has_errors** | **bool** | Gets or sets a value indicating whether the entity has errors. | [optional] 
**has_warnings** | **bool** | Gets or sets a value indicating whether the entity has warnings. | [optional] 
**is_read_only** | **bool** | Gets or sets a value indicating whether the entity is read-only. | [optional] 
**organisation_id** | **str** | Gets or sets the organization identifier. | [optional] 
**reference_entity** | [**NumberSequenceReferenceEntity**](NumberSequenceReferenceEntity.md) |  | [optional] 
**last_value** | **int** |  | [optional] 
**segments** | [**List[SegmentDTO]**](SegmentDTO.md) |  | [optional] 
**format_string** | **str** |  | [optional] 
**gaps** | **List[int]** |  | [optional] 

## Example

```python
from configuration_client.models.number_sequence_dto import NumberSequenceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of NumberSequenceDTO from a JSON string
number_sequence_dto_instance = NumberSequenceDTO.from_json(json)
# print the JSON string representation of the object
print(NumberSequenceDTO.to_json())

# convert the object into a dict
number_sequence_dto_dict = number_sequence_dto_instance.to_dict()
# create an instance of NumberSequenceDTO from a dict
number_sequence_dto_from_dict = NumberSequenceDTO.from_dict(number_sequence_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


