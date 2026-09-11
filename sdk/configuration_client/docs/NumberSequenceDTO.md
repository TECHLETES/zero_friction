# NumberSequenceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reference_entity** | [**NumberSequenceReferenceEntity**](NumberSequenceReferenceEntity.md) |  | [optional]
**last_value** | **int** |  | [optional]
**segments** | [**List[SegmentDTO]**](SegmentDTO.md) |  | [optional]
**format_string** | **str** |  | [optional]
**gaps** | **List[int]** |  | [optional]
**organisation_id** | **str** |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

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
