# BaseIncomingMutationDetailsDTOIncomingRefundRefusalDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**refund_outgoing_mutation_id** | **str** |  | [optional]
**account_holder** | **str** |  | [optional]
**description** | **str** |  | [optional]
**reversal_reason** | [**PaymentReversalReason**](PaymentReversalReason.md) |  | [optional]
**reversal_reason_extra_details** | **str** |  | [optional]
**matching_outgoing_mutation_description** | **str** |  | [optional]
**matching_outgoing_banking_transaction_id** | **str** |  | [optional]
**matching_outgoing_banking_transaction_identification** | **str** |  | [optional]
**matching_customer** | [**CustomerSummary**](CustomerSummary.md) |  | [optional]
**iban** | **str** |  | [optional]
**iban_confirmation_status** | [**IbanConfirmationStatus**](IbanConfirmationStatus.md) |  | [optional]
**is_iban_confirmed_on_transaction** | **bool** |  | [optional]

## Example

```python
from billing_client.models.base_incoming_mutation_details_dto_incoming_refund_refusal_details_dto import BaseIncomingMutationDetailsDTOIncomingRefundRefusalDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseIncomingMutationDetailsDTOIncomingRefundRefusalDetailsDTO from a JSON string
base_incoming_mutation_details_dto_incoming_refund_refusal_details_dto_instance = BaseIncomingMutationDetailsDTOIncomingRefundRefusalDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(BaseIncomingMutationDetailsDTOIncomingRefundRefusalDetailsDTO.to_json())

# convert the object into a dict
base_incoming_mutation_details_dto_incoming_refund_refusal_details_dto_dict = base_incoming_mutation_details_dto_incoming_refund_refusal_details_dto_instance.to_dict()
# create an instance of BaseIncomingMutationDetailsDTOIncomingRefundRefusalDetailsDTO from a dict
base_incoming_mutation_details_dto_incoming_refund_refusal_details_dto_from_dict = BaseIncomingMutationDetailsDTOIncomingRefundRefusalDetailsDTO.from_dict(base_incoming_mutation_details_dto_incoming_refund_refusal_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
