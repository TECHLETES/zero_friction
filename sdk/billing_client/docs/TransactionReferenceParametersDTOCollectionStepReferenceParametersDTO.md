# TransactionReferenceParametersDTOCollectionStepReferenceParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**collection_case_id** | **str** |  | [optional] 
**workflow_id** | **str** |  | [optional] 
**workflow_name** | **str** |  | [optional] 
**step_id** | **str** |  | [optional] 
**step_name** | **str** |  | [optional] 

## Example

```python
from billing_client.models.transaction_reference_parameters_dto_collection_step_reference_parameters_dto import TransactionReferenceParametersDTOCollectionStepReferenceParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TransactionReferenceParametersDTOCollectionStepReferenceParametersDTO from a JSON string
transaction_reference_parameters_dto_collection_step_reference_parameters_dto_instance = TransactionReferenceParametersDTOCollectionStepReferenceParametersDTO.from_json(json)
# print the JSON string representation of the object
print(TransactionReferenceParametersDTOCollectionStepReferenceParametersDTO.to_json())

# convert the object into a dict
transaction_reference_parameters_dto_collection_step_reference_parameters_dto_dict = transaction_reference_parameters_dto_collection_step_reference_parameters_dto_instance.to_dict()
# create an instance of TransactionReferenceParametersDTOCollectionStepReferenceParametersDTO from a dict
transaction_reference_parameters_dto_collection_step_reference_parameters_dto_from_dict = TransactionReferenceParametersDTOCollectionStepReferenceParametersDTO.from_dict(transaction_reference_parameters_dto_collection_step_reference_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


