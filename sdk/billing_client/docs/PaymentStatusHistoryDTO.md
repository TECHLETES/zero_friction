# PaymentStatusHistoryDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_status** | [**PaymentProcessStatus**](PaymentProcessStatus.md) |  | [optional] 
**outgoing_banking_transaction_id** | **str** |  | [optional] 
**outgoing_banking_transaction_identification** | **str** |  | [optional] 
**outgoing_mutation_id** | **str** |  | [optional] 
**outgoing_mutation_description** | **str** |  | [optional] 
**incoming_banking_transaction_id** | **str** |  | [optional] 
**incoming_banking_transaction_identification** | **str** |  | [optional] 
**incoming_mutation_id** | **str** |  | [optional] 
**incoming_mutation_description** | **str** |  | [optional] 
**reversal_reason** | [**PaymentReversalReason**](PaymentReversalReason.md) |  | [optional] 
**reversal_additional_information** | **str** |  | [optional] 
**mutation_date_time** | **datetime** |  | [optional] 
**payment_intent_id** | **str** |  | [optional] 

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


