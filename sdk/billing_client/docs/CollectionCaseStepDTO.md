# CollectionCaseStepDTO

Represents a step in the collection case workflow.  This DTO contains information about the step's execution, communication details, and status.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | The unique identifier of the collection case step. | [optional] 
**step_id** | **str** | The unique identifier of the step definition. | [optional] 
**order** | **int** | The order in which this step should be executed. | [optional] 
**name** | **str** | The name of the step. | [optional] 
**trigger_days** | **int** | The number of days after which this step should be triggered. | [optional] 
**execute_at** | **datetime** | The date and time when this step should be executed. | [optional] 
**step_type** | [**CollectionStepType**](CollectionStepType.md) | The type of collection step. | [optional] 
**communication_type** | [**CommunicationType**](CommunicationType.md) | The type of communication to be used for this step. | [optional] 
**communication_level** | [**CollectionStepLevel**](CollectionStepLevel.md) | The level of communication for this step. | [optional] 
**charge_type** | [**CollectionChargeType**](CollectionChargeType.md) | The type of charge associated with this step. | [optional] 
**charges** | [**StepChargeDTO**](StepChargeDTO.md) | The charges associated with this step. | [optional] 
**executed_at** | **datetime** | The date and time when this step was executed. | [optional] 
**documents_sent_at** | **datetime** | The date and time when documents were sent for this step. | [optional] 
**document_id** | **str** | The unique identifier of the document associated with this step. | [optional] 
**email_id** | **str** | The unique identifier of the email associated with this step. | [optional] 
**status** | [**CollectionStepStatus**](CollectionStepStatus.md) | The current status of this collection step. | [optional] 
**failure_reason_code** | [**LocalisedErrorDTO**](LocalisedErrorDTO.md) | The localized error code if the step execution failed. | [optional] 
**failure_details** | **str** | Detailed information about any failure that occurred during step execution. | [optional] 
**supports_external_printing** | **bool** | Indicates whether the document can be printed externally. | [optional] 
**retry_count** | **int** | The number of times this step has been retried. | [optional] 

## Example

```python
from billing_client.models.collection_case_step_dto import CollectionCaseStepDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CollectionCaseStepDTO from a JSON string
collection_case_step_dto_instance = CollectionCaseStepDTO.from_json(json)
# print the JSON string representation of the object
print(CollectionCaseStepDTO.to_json())

# convert the object into a dict
collection_case_step_dto_dict = collection_case_step_dto_instance.to_dict()
# create an instance of CollectionCaseStepDTO from a dict
collection_case_step_dto_from_dict = CollectionCaseStepDTO.from_dict(collection_case_step_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


