# PaymentReversalDetailsDTO

Contains details about a payment reversal.  This DTO includes information about why and when a payment was reversed.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reversal_reason** | [**PaymentReversalReason**](PaymentReversalReason.md) | The reason for the payment reversal. | [optional] 
**reversal_additional_information** | **str** | Additional information about the reversal. | [optional] 
**reversal_date** | **datetime** | The date when the reversal occurred. | [optional] 
**reversal_incoming_banking_transaction_id** | **str** | The ID of the incoming banking transaction that reversed this payment. | [optional] 
**reversal_incoming_banking_transaction_identification** | **str** | The identification of the incoming banking transaction that reversed this payment. | [optional] 
**reversal_incoming_mutation_id** | **str** | The ID of the incoming mutation that reversed this payment. | [optional] 

## Example

```python
from billing_client.models.payment_reversal_details_dto import PaymentReversalDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentReversalDetailsDTO from a JSON string
payment_reversal_details_dto_instance = PaymentReversalDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentReversalDetailsDTO.to_json())

# convert the object into a dict
payment_reversal_details_dto_dict = payment_reversal_details_dto_instance.to_dict()
# create an instance of PaymentReversalDetailsDTO from a dict
payment_reversal_details_dto_from_dict = PaymentReversalDetailsDTO.from_dict(payment_reversal_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


