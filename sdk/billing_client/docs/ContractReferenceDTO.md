# ContractReferenceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_id** | **str** |  | [optional] 
**contract_number** | **str** |  | [optional] 

## Example

```python
from billing_client.models.contract_reference_dto import ContractReferenceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ContractReferenceDTO from a JSON string
contract_reference_dto_instance = ContractReferenceDTO.from_json(json)
# print the JSON string representation of the object
print(ContractReferenceDTO.to_json())

# convert the object into a dict
contract_reference_dto_dict = contract_reference_dto_instance.to_dict()
# create an instance of ContractReferenceDTO from a dict
contract_reference_dto_from_dict = ContractReferenceDTO.from_dict(contract_reference_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


