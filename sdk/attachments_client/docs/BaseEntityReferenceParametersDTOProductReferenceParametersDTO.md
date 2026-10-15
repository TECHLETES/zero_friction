# BaseEntityReferenceParametersDTOProductReferenceParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**contract** | [**ContractReference**](ContractReference.md) |  | [optional] 
**product** | [**ProductReferenceDTO**](ProductReferenceDTO.md) |  | [optional] 
**product_attachment_id** | **str** |  | [optional] 
**files** | [**List[EntityAttachmentFileDTO]**](EntityAttachmentFileDTO.md) |  | [optional] 
**signed_file** | [**SignedEntityAttachmentFileReferenceDTO**](SignedEntityAttachmentFileReferenceDTO.md) |  | [optional] 
**validity** | [**DateRange**](DateRange.md) |  | [optional] 

## Example

```python
from attachments_client.models.base_entity_reference_parameters_dto_product_reference_parameters_dto import BaseEntityReferenceParametersDTOProductReferenceParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseEntityReferenceParametersDTOProductReferenceParametersDTO from a JSON string
base_entity_reference_parameters_dto_product_reference_parameters_dto_instance = BaseEntityReferenceParametersDTOProductReferenceParametersDTO.from_json(json)
# print the JSON string representation of the object
print(BaseEntityReferenceParametersDTOProductReferenceParametersDTO.to_json())

# convert the object into a dict
base_entity_reference_parameters_dto_product_reference_parameters_dto_dict = base_entity_reference_parameters_dto_product_reference_parameters_dto_instance.to_dict()
# create an instance of BaseEntityReferenceParametersDTOProductReferenceParametersDTO from a dict
base_entity_reference_parameters_dto_product_reference_parameters_dto_from_dict = BaseEntityReferenceParametersDTOProductReferenceParametersDTO.from_dict(base_entity_reference_parameters_dto_product_reference_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


