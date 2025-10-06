# CustomerContractDTO

Represents a contract associated with a customer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_id** | **str** | Unique identifier of the contract | [optional] 
**contract_number** | **str** | Contract number for reference | [optional] 
**supply_start_date_time** | **datetime** | Start date and time of the contract | [optional] 
**supply_end_date_time** | **datetime** | End date and time of the contract | [optional] 
**current_contract_status** | [**ContractStatus**](ContractStatus.md) | Current status of the contract | [optional] 
**contract_billing_method** | [**ContractBillingMethod**](ContractBillingMethod.md) | Billing method for the contract | [optional] 

## Example

```python
from masterdata_client.models.customer_contract_dto import CustomerContractDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerContractDTO from a JSON string
customer_contract_dto_instance = CustomerContractDTO.from_json(json)
# print the JSON string representation of the object
print(CustomerContractDTO.to_json())

# convert the object into a dict
customer_contract_dto_dict = customer_contract_dto_instance.to_dict()
# create an instance of CustomerContractDTO from a dict
customer_contract_dto_from_dict = CustomerContractDTO.from_dict(customer_contract_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


