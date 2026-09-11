# BaseIncomingMutationDetailsDTOIncomingOutgoingTransferDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**account_holder** | **str** |  | [optional]
**description** | **str** |  | [optional]
**matching_transactions** | [**List[IncomingTransferMatchDTO]**](IncomingTransferMatchDTO.md) |  | [optional]
**matching_customer** | [**CustomerSummary**](CustomerSummary.md) |  | [optional]
**iban** | **str** |  | [optional]
**iban_confirmation_status** | [**IbanConfirmationStatus**](IbanConfirmationStatus.md) |  | [optional]
**is_iban_confirmed_on_transaction** | **bool** |  | [optional]

## Example

```python
from billing_client.models.base_incoming_mutation_details_dto_incoming_outgoing_transfer_details_dto import BaseIncomingMutationDetailsDTOIncomingOutgoingTransferDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseIncomingMutationDetailsDTOIncomingOutgoingTransferDetailsDTO from a JSON string
base_incoming_mutation_details_dto_incoming_outgoing_transfer_details_dto_instance = BaseIncomingMutationDetailsDTOIncomingOutgoingTransferDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(BaseIncomingMutationDetailsDTOIncomingOutgoingTransferDetailsDTO.to_json())

# convert the object into a dict
base_incoming_mutation_details_dto_incoming_outgoing_transfer_details_dto_dict = base_incoming_mutation_details_dto_incoming_outgoing_transfer_details_dto_instance.to_dict()
# create an instance of BaseIncomingMutationDetailsDTOIncomingOutgoingTransferDetailsDTO from a dict
base_incoming_mutation_details_dto_incoming_outgoing_transfer_details_dto_from_dict = BaseIncomingMutationDetailsDTOIncomingOutgoingTransferDetailsDTO.from_dict(base_incoming_mutation_details_dto_incoming_outgoing_transfer_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
