# IncomingMutationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**incoming_banking_transaction_id** | **str** |  | [optional]
**transaction_date** | **datetime** |  | [optional]
**type** | [**IncomingMutationType**](IncomingMutationType.md) |  | [optional]
**status** | [**IncomingMutationStatus**](IncomingMutationStatus.md) |  | [optional]
**amount** | **float** |  | [optional]
**display_amount** | **float** |  | [optional]
**is_manual_match** | **bool** |  | [optional]
**details** | [**BaseIncomingMutationDetailsDTO**](BaseIncomingMutationDetailsDTO.md) |  | [optional]
**reference_analysis** | [**IncomingMutationReferenceAnalysisDTO**](IncomingMutationReferenceAnalysisDTO.md) |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**organisation_id** | **str** |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

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
