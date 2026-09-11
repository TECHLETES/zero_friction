# BaseIncomingMutationDetailsDTOIncomingUnknownDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**description** | **str** |  | [optional]
**domain** | **str** |  | [optional]
**family_code** | **str** |  | [optional]
**sub_family_code** | **str** |  | [optional]
**account_holder** | **str** |  | [optional]
**iban** | **str** |  | [optional]
**iban_confirmation_status** | [**IbanConfirmationStatus**](IbanConfirmationStatus.md) |  | [optional]
**is_iban_confirmed_on_transaction** | **bool** |  | [optional]

## Example

```python
from billing_client.models.base_incoming_mutation_details_dto_incoming_unknown_details_dto import BaseIncomingMutationDetailsDTOIncomingUnknownDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseIncomingMutationDetailsDTOIncomingUnknownDetailsDTO from a JSON string
base_incoming_mutation_details_dto_incoming_unknown_details_dto_instance = BaseIncomingMutationDetailsDTOIncomingUnknownDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(BaseIncomingMutationDetailsDTOIncomingUnknownDetailsDTO.to_json())

# convert the object into a dict
base_incoming_mutation_details_dto_incoming_unknown_details_dto_dict = base_incoming_mutation_details_dto_incoming_unknown_details_dto_instance.to_dict()
# create an instance of BaseIncomingMutationDetailsDTOIncomingUnknownDetailsDTO from a dict
base_incoming_mutation_details_dto_incoming_unknown_details_dto_from_dict = BaseIncomingMutationDetailsDTOIncomingUnknownDetailsDTO.from_dict(base_incoming_mutation_details_dto_incoming_unknown_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
