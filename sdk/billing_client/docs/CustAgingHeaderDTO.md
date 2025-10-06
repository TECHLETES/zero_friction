# CustAgingHeaderDTO

Represents the header information for customer aging analysis.  This DTO contains aggregated financial information about a customer's outstanding transactions and aging buckets.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**debtor** | [**DebtorDTO**](DebtorDTO.md) | Information about the debtor associated with this aging analysis. | [optional] 
**last_payment_date** | **datetime** | The date of the most recent payment received from the customer. | [optional] 
**oldest_open_debit_transaction_reference** | **str** | Reference to the oldest open debit transaction (e.g., invoice number). | [optional] 
**open_credits** | **float** | Sum of all open transactions in favor of the customer (credits). | [optional] 
**total_credit_tx_open** | **int** | Total number of open credit transactions. | [optional] 
**open_debits** | **float** | Sum of all open transactions to be paid by the customer (debits). | [optional] 
**total_debit_tx_open** | **int** | Total number of open debit transactions. | [optional] 
**total_open_not_overdue** | **float** | Total amount of open transactions that are not yet overdue. | [optional] 
**total_open_not_overdue_tx** | **float** | Total number of open transactions that are not yet overdue. | [optional] 
**total_overdue30_d** | **float** | Total amount of transactions overdue between 0 and 30 days (excluding end date). | [optional] 
**total_overdue30_dtx** | **int** | Total number of transactions overdue between 0 and 30 days. | [optional] 
**total_overdue60_d** | **float** | Total amount of transactions overdue between 30 and 60 days (excluding end date). | [optional] 
**total_overdue60_dtx** | **int** | Total number of transactions overdue between 30 and 60 days. | [optional] 
**total_overdue90_d** | **float** | Total amount of transactions overdue between 60 and 90 days (excluding end date). | [optional] 
**total_overdue90_dtx** | **int** | Total number of transactions overdue between 60 and 90 days. | [optional] 
**total_overdue_over90_d** | **float** | Total amount of transactions overdue for more than 90 days. | [optional] 
**total_overdue_over90_dtx** | **int** | Total number of transactions overdue for more than 90 days. | [optional] 
**total_collection_costs_open** | **float** | Total amount of open collection costs, including both open and potentially overdue costs. | [optional] 
**total_collection_cost_tx** | **int** | Total number of collection cost transactions. | [optional] 
**total_open** | **float** | Total amount of all open transactions. | [optional] 
**total_open_tx** | **int** | Total number of all open transactions. | [optional] 
**flow_active** | **bool** | Indicates whether there is any active collection flow on any of the underlying transactions. | [optional] 
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) | List of property groups associated with this aging analysis. | [optional] 

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


