# CustAgingHeaderDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**debtor** | [**DebtorDTO**](DebtorDTO.md) |  | [optional] 
**last_payment_date** | **datetime** |  | [optional] 
**oldest_open_debit_transaction_reference** | **str** |  | [optional] 
**open_credits** | **float** |  | [optional] 
**total_credit_tx_open** | **int** |  | [optional] 
**open_debits** | **float** |  | [optional] 
**total_debit_tx_open** | **int** |  | [optional] 
**total_open_not_overdue** | **float** |  | [optional] 
**total_open_not_overdue_tx** | **float** |  | [optional] 
**total_overdue30_d** | **float** |  | [optional] 
**total_overdue30_dtx** | **int** |  | [optional] 
**total_overdue60_d** | **float** |  | [optional] 
**total_overdue60_dtx** | **int** |  | [optional] 
**total_overdue90_d** | **float** |  | [optional] 
**total_overdue90_dtx** | **int** |  | [optional] 
**total_overdue_over90_d** | **float** |  | [optional] 
**total_overdue_over90_dtx** | **int** |  | [optional] 
**total_collection_costs_open** | **float** |  | [optional] 
**total_collection_cost_tx** | **int** |  | [optional] 
**total_open** | **float** |  | [optional] 
**total_open_tx** | **int** |  | [optional] 
**flow_active** | **bool** |  | [optional] 
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) |  | [optional] 
**has_active_payment_plan** | **bool** |  | [optional] 

## Example

```python
from billing_client.models.cust_aging_header_dto import CustAgingHeaderDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustAgingHeaderDTO from a JSON string
cust_aging_header_dto_instance = CustAgingHeaderDTO.from_json(json)
# print the JSON string representation of the object
print(CustAgingHeaderDTO.to_json())

# convert the object into a dict
cust_aging_header_dto_dict = cust_aging_header_dto_instance.to_dict()
# create an instance of CustAgingHeaderDTO from a dict
cust_aging_header_dto_from_dict = CustAgingHeaderDTO.from_dict(cust_aging_header_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


