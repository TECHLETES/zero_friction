# CustAgingLineDTO

Represents a detailed line item in the customer aging analysis.  This DTO contains information about individual transactions and their aging status.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_id** | **str** | The unique identifier of the transaction. | [optional] 
**transaction_reference_type** | **str** | The type of reference for this transaction (e.g., invoice, credit note). | [optional] 
**transaction_reference_id** | **str** | The unique identifier of the referenced transaction. | [optional] 
**reference_number** | **str** | The reference number associated with this transaction. | [optional] 
**open_amount** | **float** | The remaining open amount for this transaction. | [optional] 
**display_name** | **str** | The display name for this transaction. | [optional] 
**customer_account_number** | **str** | The account number of the customer associated with this transaction. | [optional] 
**customer_type** | [**CustomerType**](CustomerType.md) | The type of customer associated with this transaction. | [optional] 
**transaction_type** | [**TransactionType**](TransactionType.md) | The type of transaction (e.g., debit, credit). | [optional] 
**transaction_date** | **datetime** | The date when this transaction was created. | [optional] 
**transaction_due_date** | **datetime** | The date when this transaction is due for payment. | [optional] 
**open_credit** | **float** | The open credit amount for this transaction. | [optional] 
**total_open_not_overdue** | **float** | The amount that is open but not yet overdue. | [optional] 
**total_overdue30_d** | **float** | The amount overdue between 0 and 30 days. | [optional] 
**total_overdue60_d** | **float** | The amount overdue between 30 and 60 days. | [optional] 
**total_overdue90_d** | **float** | The amount overdue between 60 and 90 days. | [optional] 
**total_overdue_over90_d** | **float** | The amount overdue for more than 90 days. | [optional] 
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) | List of property groups associated with this transaction. | [optional] 
**collection_case_details** | [**CollectionCaseDetailsDTO**](CollectionCaseDetailsDTO.md) | Details about any collection case associated with this transaction. | [optional] 

## Example

```python
from billing_client.models.cust_aging_line_dto import CustAgingLineDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustAgingLineDTO from a JSON string
cust_aging_line_dto_instance = CustAgingLineDTO.from_json(json)
# print the JSON string representation of the object
print(CustAgingLineDTO.to_json())

# convert the object into a dict
cust_aging_line_dto_dict = cust_aging_line_dto_instance.to_dict()
# create an instance of CustAgingLineDTO from a dict
cust_aging_line_dto_from_dict = CustAgingLineDTO.from_dict(cust_aging_line_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


