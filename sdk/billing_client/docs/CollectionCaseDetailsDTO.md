# CollectionCaseDetailsDTO

Represents detailed information about a collection case.  Contains information about the case's workflow, current status, and step progression.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**collection_case_id** | **str** | The unique identifier of the collection case. | [optional] 
**closed** | **bool** | Indicates whether the collection case is closed. | [optional] 
**workflow_id** | **str** | The unique identifier of the workflow associated with this collection case. | [optional] 
**workflow_name** | **str** | The name of the workflow associated with this collection case. | [optional] 
**previous_step_id** | **str** | The unique identifier of the previous step in the collection workflow. | [optional] 
**previous_step_name** | **str** | The name of the previous step in the collection workflow. | [optional] 
**previous_step_executed_at** | **datetime** | The date and time when the previous step was executed. | [optional] 
**previous_step_status** | [**CollectionStepStatus**](CollectionStepStatus.md) | The status of the previous step in the collection workflow. | [optional] 
**next_step_id** | **str** | The unique identifier of the next step in the collection workflow. | [optional] 
**next_step_name** | **str** | The name of the next step in the collection workflow. | [optional] 
**next_step_execution_date** | **datetime** | The scheduled date and time for executing the next step. | [optional] 

## Example

```python
from billing_client.models.collection_case_details_dto import CollectionCaseDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CollectionCaseDetailsDTO from a JSON string
collection_case_details_dto_instance = CollectionCaseDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(CollectionCaseDetailsDTO.to_json())

# convert the object into a dict
collection_case_details_dto_dict = collection_case_details_dto_instance.to_dict()
# create an instance of CollectionCaseDetailsDTO from a dict
collection_case_details_dto_from_dict = CollectionCaseDetailsDTO.from_dict(collection_case_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


