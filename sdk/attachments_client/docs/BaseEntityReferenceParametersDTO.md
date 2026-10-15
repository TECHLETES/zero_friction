# BaseEntityReferenceParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | 
**file** | [**EntityAttachmentFileDTO**](EntityAttachmentFileDTO.md) |  | [optional] 
**contract** | [**ContractReference**](ContractReference.md) |  | [optional] 
**product** | [**ProductReferenceDTO**](ProductReferenceDTO.md) |  | [optional] 
**product_attachment_id** | **str** |  | [optional] 
**files** | [**List[EntityAttachmentFileDTO]**](EntityAttachmentFileDTO.md) |  | [optional] 
**signed_file** | [**SignedEntityAttachmentFileReferenceDTO**](SignedEntityAttachmentFileReferenceDTO.md) |  | [optional] 
**validity** | [**DateRange**](DateRange.md) |  | [optional] 
**entity_attachment_group_id** | **str** |  | [optional] 
**entity_subject_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**entity_subject_id** | **str** |  | [optional] 
**entity_subject_display_name** | **str** |  | [optional] 
**contracts** | [**List[SignableContractReferenceDTO]**](SignableContractReferenceDTO.md) |  | [optional] 

## Example

```python
from attachments_client.models.base_entity_reference_parameters_dto import BaseEntityReferenceParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseEntityReferenceParametersDTO from a JSON string
base_entity_reference_parameters_dto_instance = BaseEntityReferenceParametersDTO.from_json(json)
# print the JSON string representation of the object
print(BaseEntityReferenceParametersDTO.to_json())

# convert the object into a dict
base_entity_reference_parameters_dto_dict = base_entity_reference_parameters_dto_instance.to_dict()
# create an instance of BaseEntityReferenceParametersDTO from a dict
base_entity_reference_parameters_dto_from_dict = BaseEntityReferenceParametersDTO.from_dict(base_entity_reference_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


