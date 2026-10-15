# BaseIncomingMutationDetailsDTOIncomingPaymentRequestRefusalDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**payment_request_outgoing_mutation_id** | **str** |  | [optional] 
**mandate_number** | **str** |  | [optional] 
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
from billing_client.models.base_incoming_mutation_details_dto_incoming_payment_request_refusal_details_dto import BaseIncomingMutationDetailsDTOIncomingPaymentRequestRefusalDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseIncomingMutationDetailsDTOIncomingPaymentRequestRefusalDetailsDTO from a JSON string
base_incoming_mutation_details_dto_incoming_payment_request_refusal_details_dto_instance = BaseIncomingMutationDetailsDTOIncomingPaymentRequestRefusalDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(BaseIncomingMutationDetailsDTOIncomingPaymentRequestRefusalDetailsDTO.to_json())

# convert the object into a dict
base_incoming_mutation_details_dto_incoming_payment_request_refusal_details_dto_dict = base_incoming_mutation_details_dto_incoming_payment_request_refusal_details_dto_instance.to_dict()
# create an instance of BaseIncomingMutationDetailsDTOIncomingPaymentRequestRefusalDetailsDTO from a dict
base_incoming_mutation_details_dto_incoming_payment_request_refusal_details_dto_from_dict = BaseIncomingMutationDetailsDTOIncomingPaymentRequestRefusalDetailsDTO.from_dict(base_incoming_mutation_details_dto_incoming_payment_request_refusal_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


