# ContractDetailsBillingPropertiesBaseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_method** | [**ContractBillingMethod**](ContractBillingMethod.md) |  | [optional] [readonly] 

## Example

```python
from masterdata_client.models.contract_details_billing_properties_base_dto import ContractDetailsBillingPropertiesBaseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ContractDetailsBillingPropertiesBaseDTO from a JSON string
contract_details_billing_properties_base_dto_instance = ContractDetailsBillingPropertiesBaseDTO.from_json(json)
# print the JSON string representation of the object
print(ContractDetailsBillingPropertiesBaseDTO.to_json())

# convert the object into a dict
contract_details_billing_properties_base_dto_dict = contract_details_billing_properties_base_dto_instance.to_dict()
# create an instance of ContractDetailsBillingPropertiesBaseDTO from a dict
contract_details_billing_properties_base_dto_from_dict = ContractDetailsBillingPropertiesBaseDTO.from_dict(contract_details_billing_properties_base_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


