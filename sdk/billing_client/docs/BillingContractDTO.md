# BillingContractDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_id** | **str** |  | [optional]
**contract_number** | **str** |  | [optional]
**products** | [**List[ProductPeriodReferenceDTO]**](ProductPeriodReferenceDTO.md) |  | [optional]
**services** | [**List[BilledServiceDTO]**](BilledServiceDTO.md) |  | [optional]
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) |  | [optional]
**billing_methods** | [**List[BillingMethodPeriodReferenceDTO]**](BillingMethodPeriodReferenceDTO.md) |  | [optional]
**current_billing_method** | [**ContractBillingMethod**](ContractBillingMethod.md) |  | [optional]
**billing_method** | [**ContractBillingMethod**](ContractBillingMethod.md) |  | [optional]

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
