# CollectionFlowStepRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional]
**name** | **str** |  |
**trigger_days** | **int** |  | [optional]
**step_type** | [**CollectionStepType**](CollectionStepType.md) |  |
**charge_type** | [**CollectionChargeType**](CollectionChargeType.md) |  |
**charge_parameters** | [**CollectionChargeParametersDTO**](CollectionChargeParametersDTO.md) |  |
**communication_type** | [**CommunicationType**](CommunicationType.md) |  |
**auto_fallback_to_postal** | **bool** |  | [optional]
**message_title** | **str** |  |
**communication_level** | [**CollectionStepLevel**](CollectionStepLevel.md) |  |
**communication_attachments** | [**List[TemplateAttachmentRequest]**](TemplateAttachmentRequest.md) |  |
**localisation_level** | [**LocalisationLevel**](LocalisationLevel.md) |  | [optional]
**localised_fields** | **List[str]** |  | [optional]
**translated_fields** | **Dict[str, Dict[str, str]]** |  | [optional]

## Example

```python
from configuration_client.models.collection_flow_step_request import CollectionFlowStepRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CollectionFlowStepRequest from a JSON string
collection_flow_step_request_instance = CollectionFlowStepRequest.from_json(json)
# print the JSON string representation of the object
print(CollectionFlowStepRequest.to_json())

# convert the object into a dict
collection_flow_step_request_dict = collection_flow_step_request_instance.to_dict()
# create an instance of CollectionFlowStepRequest from a dict
collection_flow_step_request_from_dict = CollectionFlowStepRequest.from_dict(collection_flow_step_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
