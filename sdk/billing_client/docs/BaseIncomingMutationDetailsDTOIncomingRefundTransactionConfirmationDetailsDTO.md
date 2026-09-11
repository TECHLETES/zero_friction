# BaseIncomingMutationDetailsDTOIncomingRefundTransactionConfirmationDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**number_of_transactions** | **int** |  | [optional]
**refund_outgoing_banking_transaction_id** | **str** |  | [optional]
**matching_outgoing_banking_transaction_identification** | **str** |  | [optional]

## Example

```python
from billing_client.models.base_incoming_mutation_details_dto_incoming_refund_transaction_confirmation_details_dto import BaseIncomingMutationDetailsDTOIncomingRefundTransactionConfirmationDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseIncomingMutationDetailsDTOIncomingRefundTransactionConfirmationDetailsDTO from a JSON string
base_incoming_mutation_details_dto_incoming_refund_transaction_confirmation_details_dto_instance = BaseIncomingMutationDetailsDTOIncomingRefundTransactionConfirmationDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(BaseIncomingMutationDetailsDTOIncomingRefundTransactionConfirmationDetailsDTO.to_json())

# convert the object into a dict
base_incoming_mutation_details_dto_incoming_refund_transaction_confirmation_details_dto_dict = base_incoming_mutation_details_dto_incoming_refund_transaction_confirmation_details_dto_instance.to_dict()
# create an instance of BaseIncomingMutationDetailsDTOIncomingRefundTransactionConfirmationDetailsDTO from a dict
base_incoming_mutation_details_dto_incoming_refund_transaction_confirmation_details_dto_from_dict = BaseIncomingMutationDetailsDTOIncomingRefundTransactionConfirmationDetailsDTO.from_dict(base_incoming_mutation_details_dto_incoming_refund_transaction_confirmation_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
