# JournalDto


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**external_accounting_metadata** | [**ExternalAccountingMetadataDTO**](ExternalAccountingMetadataDTO.md) |  | 
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
from configuration_client.models.journal_dto import JournalDto

# TODO update the JSON string below
json = "{}"
# create an instance of JournalDto from a JSON string
journal_dto_instance = JournalDto.from_json(json)
# print the JSON string representation of the object
print(JournalDto.to_json())

# convert the object into a dict
journal_dto_dict = journal_dto_instance.to_dict()
# create an instance of JournalDto from a dict
journal_dto_from_dict = JournalDto.from_dict(journal_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


