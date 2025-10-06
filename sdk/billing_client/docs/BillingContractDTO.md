# BillingContractDTO

Represents a billing contract with its associated products and services.  This DTO contains information about the contract, its products, and billing method.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_id** | **str** | The unique identifier of the contract. | [optional] 
**contract_number** | **str** | The contract number. | [optional] 
**products** | [**List[ProductPeriodReferenceDTO]**](ProductPeriodReferenceDTO.md) | List of products associated with this contract. | [optional] 
**services** | [**List[BilledServiceDTO]**](BilledServiceDTO.md) | List of services being billed under this contract. | [optional] 
**use_property_group_product** | **bool** | Indicates whether to use the property group product. | [optional] 
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) | List of property groups associated with this contract. | [optional] 
**billing_method** | [**ContractBillingMethod**](ContractBillingMethod.md) | The billing method used for this contract. | [optional] 

## Example

```python
from billing_client.models.billing_contract_dto import BillingContractDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BillingContractDTO from a JSON string
billing_contract_dto_instance = BillingContractDTO.from_json(json)
# print the JSON string representation of the object
print(BillingContractDTO.to_json())

# convert the object into a dict
billing_contract_dto_dict = billing_contract_dto_instance.to_dict()
# create an instance of BillingContractDTO from a dict
billing_contract_dto_from_dict = BillingContractDTO.from_dict(billing_contract_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


