# BaseIncomingMutationDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  |
**number_of_transactions** | **int** |  | [optional]
**payment_request_outgoing_banking_transaction_id** | **str** |  | [optional]
**matching_outgoing_banking_transaction_identification** | **str** |  | [optional]
**refund_outgoing_banking_transaction_id** | **str** |  | [optional]
**account_holder** | **str** |  | [optional]
**description** | **str** |  | [optional]
**matching_transactions** | [**List[IncomingTransferMatchDTO]**](IncomingTransferMatchDTO.md) |  | [optional]
**matching_customer** | [**CustomerSummary**](CustomerSummary.md) |  | [optional]
**iban** | **str** |  | [optional]
**iban_confirmation_status** | [**IbanConfirmationStatus**](IbanConfirmationStatus.md) |  | [optional]
**is_iban_confirmed_on_transaction** | **bool** |  | [optional]
**payment_request_outgoing_mutation_id** | **str** |  | [optional]
**matching_outgoing_banking_transaction_id** | **str** |  | [optional]
**mandate_number** | **str** |  | [optional]
**reversal_reason** | [**PaymentReversalReason**](PaymentReversalReason.md) |  | [optional]
**reversal_reason_extra_details** | **str** |  | [optional]
**matching_outgoing_mutation_description** | **str** |  | [optional]
**refund_outgoing_mutation_id** | **str** |  | [optional]
**domain** | **str** |  | [optional]
**family_code** | **str** |  | [optional]
**sub_family_code** | **str** |  | [optional]

## Example

```python
from billing_client.models.base_incoming_mutation_details_dto import BaseIncomingMutationDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseIncomingMutationDetailsDTO from a JSON string
base_incoming_mutation_details_dto_instance = BaseIncomingMutationDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(BaseIncomingMutationDetailsDTO.to_json())

# convert the object into a dict
base_incoming_mutation_details_dto_dict = base_incoming_mutation_details_dto_instance.to_dict()
# create an instance of BaseIncomingMutationDetailsDTO from a dict
base_incoming_mutation_details_dto_from_dict = BaseIncomingMutationDetailsDTO.from_dict(base_incoming_mutation_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
