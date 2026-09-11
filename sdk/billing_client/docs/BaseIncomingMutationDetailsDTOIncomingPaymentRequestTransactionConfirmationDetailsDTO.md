# BaseIncomingMutationDetailsDTOIncomingPaymentRequestTransactionConfirmationDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**number_of_transactions** | **int** |  | [optional]
**payment_request_outgoing_banking_transaction_id** | **str** |  | [optional]
**matching_outgoing_banking_transaction_identification** | **str** |  | [optional]

## Example

```python
from billing_client.models.base_incoming_mutation_details_dto_incoming_payment_request_transaction_confirmation_details_dto import BaseIncomingMutationDetailsDTOIncomingPaymentRequestTransactionConfirmationDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseIncomingMutationDetailsDTOIncomingPaymentRequestTransactionConfirmationDetailsDTO from a JSON string
base_incoming_mutation_details_dto_incoming_payment_request_transaction_confirmation_details_dto_instance = BaseIncomingMutationDetailsDTOIncomingPaymentRequestTransactionConfirmationDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(BaseIncomingMutationDetailsDTOIncomingPaymentRequestTransactionConfirmationDetailsDTO.to_json())

# convert the object into a dict
base_incoming_mutation_details_dto_incoming_payment_request_transaction_confirmation_details_dto_dict = base_incoming_mutation_details_dto_incoming_payment_request_transaction_confirmation_details_dto_instance.to_dict()
# create an instance of BaseIncomingMutationDetailsDTOIncomingPaymentRequestTransactionConfirmationDetailsDTO from a dict
base_incoming_mutation_details_dto_incoming_payment_request_transaction_confirmation_details_dto_from_dict = BaseIncomingMutationDetailsDTOIncomingPaymentRequestTransactionConfirmationDetailsDTO.from_dict(base_incoming_mutation_details_dto_incoming_payment_request_transaction_confirmation_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
