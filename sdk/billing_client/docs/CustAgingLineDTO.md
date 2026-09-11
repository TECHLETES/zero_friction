# CustAgingLineDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_id** | **str** |  | [optional]
**transaction_reference_type** | **str** |  | [optional]
**transaction_reference_id** | **str** |  | [optional]
**reference_number** | **str** |  | [optional]
**open_amount** | **float** |  | [optional]
**display_name** | **str** |  | [optional]
**customer_account_number** | **str** |  | [optional]
**customer_type** | [**CustomerType**](CustomerType.md) |  | [optional]
**transaction_type** | [**TransactionType**](TransactionType.md) |  | [optional]
**transaction_date** | **datetime** |  | [optional]
**transaction_due_date** | **datetime** |  | [optional]
**open_credit** | **float** |  | [optional]
**total_open_not_overdue** | **float** |  | [optional]
**total_overdue30_d** | **float** |  | [optional]
**total_overdue60_d** | **float** |  | [optional]
**total_overdue90_d** | **float** |  | [optional]
**total_overdue_over90_d** | **float** |  | [optional]
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) |  | [optional]
**collection_case_details** | [**CollectionCaseDetailsDTO**](CollectionCaseDetailsDTO.md) |  | [optional]
**payment_plan_details** | [**PaymentPlanDetailsDTO**](PaymentPlanDetailsDTO.md) |  | [optional]

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
