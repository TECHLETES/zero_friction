# SignedEntityAttachmentFileReferenceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**signed_date_time** | **datetime** |  | [optional]
**culture** | **str** | Culture identifier (e.g., &#39;en-US&#39;, &#39;nl-NL&#39;) | [optional]
**localised_file_name** | **str** |  | [optional]

## Example

```python
from attachments_client.models.signed_entity_attachment_file_reference_dto import SignedEntityAttachmentFileReferenceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of SignedEntityAttachmentFileReferenceDTO from a JSON string
signed_entity_attachment_file_reference_dto_instance = SignedEntityAttachmentFileReferenceDTO.from_json(json)
# print the JSON string representation of the object
print(SignedEntityAttachmentFileReferenceDTO.to_json())

# convert the object into a dict
signed_entity_attachment_file_reference_dto_dict = signed_entity_attachment_file_reference_dto_instance.to_dict()
# create an instance of SignedEntityAttachmentFileReferenceDTO from a dict
signed_entity_attachment_file_reference_dto_from_dict = SignedEntityAttachmentFileReferenceDTO.from_dict(signed_entity_attachment_file_reference_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
