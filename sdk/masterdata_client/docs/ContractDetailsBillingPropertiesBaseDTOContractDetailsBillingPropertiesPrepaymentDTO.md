# ContractDetailsBillingPropertiesBaseDTOContractDetailsBillingPropertiesPrepaymentDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**billing_method** | [**ContractBillingMethod**](ContractBillingMethod.md) |  | [optional]
**statement_frequency** | [**InvoiceFrequency**](InvoiceFrequency.md) |  |
**back_charge_end_date_time** | **datetime** |  | [optional]
**gift_amount** | **float** |  | [optional]

## Example

```python
from masterdata_client.models.contract_details_billing_properties_base_dto_contract_details_billing_properties_prepayment_dto import ContractDetailsBillingPropertiesBaseDTOContractDetailsBillingPropertiesPrepaymentDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ContractDetailsBillingPropertiesBaseDTOContractDetailsBillingPropertiesPrepaymentDTO from a JSON string
contract_details_billing_properties_base_dto_contract_details_billing_properties_prepayment_dto_instance = ContractDetailsBillingPropertiesBaseDTOContractDetailsBillingPropertiesPrepaymentDTO.from_json(json)
# print the JSON string representation of the object
print(ContractDetailsBillingPropertiesBaseDTOContractDetailsBillingPropertiesPrepaymentDTO.to_json())

# convert the object into a dict
contract_details_billing_properties_base_dto_contract_details_billing_properties_prepayment_dto_dict = contract_details_billing_properties_base_dto_contract_details_billing_properties_prepayment_dto_instance.to_dict()
# create an instance of ContractDetailsBillingPropertiesBaseDTOContractDetailsBillingPropertiesPrepaymentDTO from a dict
contract_details_billing_properties_base_dto_contract_details_billing_properties_prepayment_dto_from_dict = ContractDetailsBillingPropertiesBaseDTOContractDetailsBillingPropertiesPrepaymentDTO.from_dict(contract_details_billing_properties_base_dto_contract_details_billing_properties_prepayment_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
