# BaseEntityReferenceParametersDTOContractReferenceParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**contract** | [**ContractReference**](ContractReference.md) |  | [optional]
**file** | [**EntityAttachmentFileDTO**](EntityAttachmentFileDTO.md) |  | [optional]

## Example

```python
from attachments_client.models.base_entity_reference_parameters_dto_contract_reference_parameters_dto import BaseEntityReferenceParametersDTOContractReferenceParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseEntityReferenceParametersDTOContractReferenceParametersDTO from a JSON string
base_entity_reference_parameters_dto_contract_reference_parameters_dto_instance = BaseEntityReferenceParametersDTOContractReferenceParametersDTO.from_json(json)
# print the JSON string representation of the object
print(BaseEntityReferenceParametersDTOContractReferenceParametersDTO.to_json())

# convert the object into a dict
base_entity_reference_parameters_dto_contract_reference_parameters_dto_dict = base_entity_reference_parameters_dto_contract_reference_parameters_dto_instance.to_dict()
# create an instance of BaseEntityReferenceParametersDTOContractReferenceParametersDTO from a dict
base_entity_reference_parameters_dto_contract_reference_parameters_dto_from_dict = BaseEntityReferenceParametersDTOContractReferenceParametersDTO.from_dict(base_entity_reference_parameters_dto_contract_reference_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
