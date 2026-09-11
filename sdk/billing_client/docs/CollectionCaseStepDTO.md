# CollectionCaseStepDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional]
**step_id** | **str** |  | [optional]
**order** | **int** |  | [optional]
**name** | **str** |  | [optional]
**trigger_days** | **int** |  | [optional]
**execute_at** | **datetime** |  | [optional]
**step_type** | [**CollectionStepType**](CollectionStepType.md) |  | [optional]
**communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional]
**communication_level** | [**CollectionStepLevel**](CollectionStepLevel.md) |  | [optional]
**charge_type** | [**CollectionChargeType**](CollectionChargeType.md) |  | [optional]
**charges** | [**StepChargeDTO**](StepChargeDTO.md) |  | [optional]
**executed_at** | **datetime** |  | [optional]
**documents_sent_at** | **datetime** |  | [optional]
**document_id** | **str** |  | [optional]
**email_id** | **str** |  | [optional]
**status** | [**CollectionStepStatus**](CollectionStepStatus.md) |  | [optional]
**failure_reason_code** | [**LocalisedErrorDTO**](LocalisedErrorDTO.md) |  | [optional]
**supports_external_printing** | **bool** |  | [optional]
**retry_count** | **int** |  | [optional]

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
