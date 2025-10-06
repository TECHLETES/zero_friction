# IncomingMutationDTO

Represents an incoming banking transaction mutation.  This DTO contains information about the transaction, its status, and associated details.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Gets or sets the unique identifier. | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) | Gets or sets the type of the entity. | [optional] 
**created_date_time** | **datetime** | Gets or sets the date and time when the entity was created. | [optional] 
**discriminator** | **str** | Gets or sets the discriminator value. | [optional] 
**etag** | **str** | Gets or sets the ETag value. | [optional] 
**require_attention** | **bool** | Gets a value indicating whether the entity requires attention. | [optional] [readonly] 
**has_errors** | **bool** | Gets or sets a value indicating whether the entity has errors. | [optional] 
**has_warnings** | **bool** | Gets or sets a value indicating whether the entity has warnings. | [optional] 
**is_read_only** | **bool** | Gets or sets a value indicating whether the entity is read-only. | [optional] 
**organisation_id** | **str** | Gets or sets the organization identifier. | [optional] 
**incoming_banking_transaction_id** | **str** | The unique identifier of the incoming banking transaction. | [optional] 
**transaction_date** | **datetime** | The date and time when the transaction occurred. | [optional] 
**type** | [**IncomingMutationType**](IncomingMutationType.md) | The type of incoming mutation. | [optional] 
**status** | [**IncomingMutationStatus**](IncomingMutationStatus.md) | The current status of the incoming mutation. | [optional] 
**amount** | **float** | The transaction amount. | [optional] 
**is_manual_match** | **bool** | Indicates whether this mutation was manually matched. | [optional] 
**details** | **object** | The details specific to this type of incoming mutation. | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) | List of localized errors associated with this mutation. | [optional] 

## Example

```python
from billing_client.models.incoming_mutation_dto import IncomingMutationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingMutationDTO from a JSON string
incoming_mutation_dto_instance = IncomingMutationDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingMutationDTO.to_json())

# convert the object into a dict
incoming_mutation_dto_dict = incoming_mutation_dto_instance.to_dict()
# create an instance of IncomingMutationDTO from a dict
incoming_mutation_dto_from_dict = IncomingMutationDTO.from_dict(incoming_mutation_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


