# IncomingMutationReferenceAnalysisDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**raw_reference** | **str** |  | [optional]
**kind** | [**IncomingMutationReferenceAnalysisKind**](IncomingMutationReferenceAnalysisKind.md) |  | [optional]
**tokens** | [**List[IncomingMutationReferenceTokenDTO]**](IncomingMutationReferenceTokenDTO.md) |  | [optional]
**suggested_customer_id** | **str** |  | [optional]
**suggested_transaction_ids** | **List[str]** |  | [optional]
**amount_matches** | **bool** |  | [optional]
**iban_matches** | **bool** |  | [optional]
**auto_match_applied** | **bool** |  | [optional]
**reason** | **str** |  | [optional]
**analyzed_at** | **datetime** |  | [optional]

## Example

```python
from billing_client.models.incoming_mutation_reference_analysis_dto import IncomingMutationReferenceAnalysisDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingMutationReferenceAnalysisDTO from a JSON string
incoming_mutation_reference_analysis_dto_instance = IncomingMutationReferenceAnalysisDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingMutationReferenceAnalysisDTO.to_json())

# convert the object into a dict
incoming_mutation_reference_analysis_dto_dict = incoming_mutation_reference_analysis_dto_instance.to_dict()
# create an instance of IncomingMutationReferenceAnalysisDTO from a dict
incoming_mutation_reference_analysis_dto_from_dict = IncomingMutationReferenceAnalysisDTO.from_dict(incoming_mutation_reference_analysis_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
