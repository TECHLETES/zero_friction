# EntityAttachmentOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** |  | [optional] 
**visible_for_customer** | **int** |  | [optional] 

## Example

```python
from attachments_client.models.entity_attachment_overview_count_dto import EntityAttachmentOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EntityAttachmentOverviewCountDTO from a JSON string
entity_attachment_overview_count_dto_instance = EntityAttachmentOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(EntityAttachmentOverviewCountDTO.to_json())

# convert the object into a dict
entity_attachment_overview_count_dto_dict = entity_attachment_overview_count_dto_instance.to_dict()
# create an instance of EntityAttachmentOverviewCountDTO from a dict
entity_attachment_overview_count_dto_from_dict = EntityAttachmentOverviewCountDTO.from_dict(entity_attachment_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


