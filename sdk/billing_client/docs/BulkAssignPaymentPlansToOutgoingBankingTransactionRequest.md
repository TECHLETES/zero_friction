# BulkAssignPaymentPlansToOutgoingBankingTransactionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional]
**var_query_params** | [**PaymentPlanQueryParams**](PaymentPlanQueryParams.md) |  | [optional]
**quick_filter** | **str** |  | [optional]
**all_applicable** | **bool** |  | [optional]
**outgoing_banking_transaction_type** | [**OutgoingBankingTransactionType**](OutgoingBankingTransactionType.md) |  | [optional]
**payment_plan_ids** | **List[str]** |  | [optional]
**add_to_new_outgoing_banking_transactions** | **bool** |  | [optional]
**overridden_collection_date** | **datetime** |  | [optional]

## Example

```python
from billing_client.models.bulk_assign_payment_plans_to_outgoing_banking_transaction_request import BulkAssignPaymentPlansToOutgoingBankingTransactionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkAssignPaymentPlansToOutgoingBankingTransactionRequest from a JSON string
bulk_assign_payment_plans_to_outgoing_banking_transaction_request_instance = BulkAssignPaymentPlansToOutgoingBankingTransactionRequest.from_json(json)
# print the JSON string representation of the object
print(BulkAssignPaymentPlansToOutgoingBankingTransactionRequest.to_json())

# convert the object into a dict
bulk_assign_payment_plans_to_outgoing_banking_transaction_request_dict = bulk_assign_payment_plans_to_outgoing_banking_transaction_request_instance.to_dict()
# create an instance of BulkAssignPaymentPlansToOutgoingBankingTransactionRequest from a dict
bulk_assign_payment_plans_to_outgoing_banking_transaction_request_from_dict = BulkAssignPaymentPlansToOutgoingBankingTransactionRequest.from_dict(bulk_assign_payment_plans_to_outgoing_banking_transaction_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
