# IncomingMutationIbanConfirmationStatusDTO

Represents the IBAN confirmation status for an incoming mutation.  This DTO contains information about the customer's IBAN confirmation status.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **str** | The unique identifier of the customer. | [optional] 
**iban_confirmation_status** | [**IbanConfirmationStatus**](IbanConfirmationStatus.md) | The current status of the IBAN confirmation. | [optional] 
**is_iban_confirmed_on_transaction** | **bool** | Indicates whether the IBAN is confirmed on the transaction. | [optional] 

## Example

```python
from billing_client.models.incoming_mutation_iban_confirmation_status_dto import IncomingMutationIbanConfirmationStatusDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingMutationIbanConfirmationStatusDTO from a JSON string
incoming_mutation_iban_confirmation_status_dto_instance = IncomingMutationIbanConfirmationStatusDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingMutationIbanConfirmationStatusDTO.to_json())

# convert the object into a dict
incoming_mutation_iban_confirmation_status_dto_dict = incoming_mutation_iban_confirmation_status_dto_instance.to_dict()
# create an instance of IncomingMutationIbanConfirmationStatusDTO from a dict
incoming_mutation_iban_confirmation_status_dto_from_dict = IncomingMutationIbanConfirmationStatusDTO.from_dict(incoming_mutation_iban_confirmation_status_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


