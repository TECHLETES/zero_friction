# PaymentStatusHistoryDTO

Represents a history entry for payment status changes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_status** | [**PaymentProcessStatus**](PaymentProcessStatus.md) | Status of the payment process | [optional] 
**outgoing_banking_transaction_id** | **str** | Identifier of the outgoing banking transaction | [optional] 
**outgoing_banking_transaction_identification** | **str** | Identification of the outgoing banking transaction | [optional] 
**outgoing_mutation_id** | **str** | Identifier of the outgoing mutation | [optional] 
**outgoing_mutation_description** | **str** | Description of the outgoing mutation | [optional] 
**incoming_banking_transaction_id** | **str** | Identifier of the incoming banking transaction | [optional] 
**incoming_banking_transaction_identification** | **str** | Identification of the incoming banking transaction | [optional] 
**incoming_mutation_id** | **str** | Identifier of the incoming mutation | [optional] 
**incoming_mutation_description** | **str** | Description of the incoming mutation | [optional] 
**reversal_reason** | [**PaymentReversalReason**](PaymentReversalReason.md) | Reason for payment reversal | [optional] 
**reversal_additional_information** | **str** | Additional information about the reversal | [optional] 
**mutation_date_time** | **datetime** | Date and time of the mutation | [optional] 

## Example

```python
from billing_client.models.payment_status_history_dto import PaymentStatusHistoryDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentStatusHistoryDTO from a JSON string
payment_status_history_dto_instance = PaymentStatusHistoryDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentStatusHistoryDTO.to_json())

# convert the object into a dict
payment_status_history_dto_dict = payment_status_history_dto_instance.to_dict()
# create an instance of PaymentStatusHistoryDTO from a dict
payment_status_history_dto_from_dict = PaymentStatusHistoryDTO.from_dict(payment_status_history_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


