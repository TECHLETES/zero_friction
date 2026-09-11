# CollectionCaseDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**collection_case_id** | **str** |  | [optional]
**closed** | **bool** |  | [optional]
**workflow_id** | **str** |  | [optional]
**workflow_name** | **str** |  | [optional]
**previous_step_id** | **str** |  | [optional]
**previous_step_name** | **str** |  | [optional]
**previous_step_executed_at** | **datetime** |  | [optional]
**previous_step_status** | [**CollectionStepStatus**](CollectionStepStatus.md) |  | [optional]
**next_step_id** | **str** |  | [optional]
**next_step_name** | **str** |  | [optional]
**next_step_execution_date** | **datetime** |  | [optional]

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
