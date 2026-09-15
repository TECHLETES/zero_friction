# CollectionFlowStepDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**trigger_days** | **int** |  | [optional] 
**step_type** | [**CollectionStepType**](CollectionStepType.md) |  | [optional] 
**charge_type** | [**CollectionChargeType**](CollectionChargeType.md) |  | [optional] 
**charge_parameters** | [**CollectionChargeParametersDTO**](CollectionChargeParametersDTO.md) |  | [optional] 
**communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional] 
**auto_fallback_to_postal** | **bool** |  | [optional] 
**message_title** | **str** |  | [optional] 
**communication_level** | [**CollectionStepLevel**](CollectionStepLevel.md) |  | [optional] 
**communication_attachments** | [**List[TemplateAttachmentRequest]**](TemplateAttachmentRequest.md) |  | [optional] 
**localisation_level** | [**LocalisationLevel**](LocalisationLevel.md) |  | [optional] 
**localised_fields** | **List[str]** |  | [optional] 
**translated_fields** | **Dict[str, Dict[str, str]]** |  | [optional] 
**id** | **str** |  | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**created_date_time** | **datetime** |  | [optional] 
**discriminator** | **str** |  | [optional] 
**etag** | **str** |  | [optional] 
**has_errors** | **bool** |  | [optional] 
**is_read_only** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.collection_flow_step_dto import CollectionFlowStepDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CollectionFlowStepDTO from a JSON string
collection_flow_step_dto_instance = CollectionFlowStepDTO.from_json(json)
# print the JSON string representation of the object
print(CollectionFlowStepDTO.to_json())

# convert the object into a dict
collection_flow_step_dto_dict = collection_flow_step_dto_instance.to_dict()
# create an instance of CollectionFlowStepDTO from a dict
collection_flow_step_dto_from_dict = CollectionFlowStepDTO.from_dict(collection_flow_step_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


