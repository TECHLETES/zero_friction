# SignableContractReferenceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**signed_file** | [**SignedEntityAttachmentFileReferenceDTO**](SignedEntityAttachmentFileReferenceDTO.md) |  | [optional]
**contract_id** | **str** |  | [optional]
**contract_number** | **str** |  | [optional]

## Example

```python
from attachments_client.models.signable_contract_reference_dto import SignableContractReferenceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of SignableContractReferenceDTO from a JSON string
signable_contract_reference_dto_instance = SignableContractReferenceDTO.from_json(json)
# print the JSON string representation of the object
print(SignableContractReferenceDTO.to_json())

# convert the object into a dict
signable_contract_reference_dto_dict = signable_contract_reference_dto_instance.to_dict()
# create an instance of SignableContractReferenceDTO from a dict
signable_contract_reference_dto_from_dict = SignableContractReferenceDTO.from_dict(signable_contract_reference_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
