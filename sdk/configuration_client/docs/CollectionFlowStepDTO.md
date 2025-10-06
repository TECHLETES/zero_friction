# CollectionFlowStepDTO


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
**name** | **str** |  | [optional] 
**trigger_days** | **int** |  | [optional] 
**step_type** | [**CollectionStepType**](CollectionStepType.md) |  | [optional] 
**charge_type** | [**CollectionChargeType**](CollectionChargeType.md) |  | [optional] 
**charge_parameters** | [**CollectionChargeParametersDTO**](CollectionChargeParametersDTO.md) |  | [optional] 
**communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional] 
**message_title** | **str** |  | [optional] 
**communication_level** | [**CollectionStepLevel**](CollectionStepLevel.md) |  | [optional] 
**communication_attachments** | [**List[TemplateAttachmentRequest]**](TemplateAttachmentRequest.md) |  | [optional] 
**localisation_level** | [**LocalisationLevel**](LocalisationLevel.md) |  | [optional] 
**localised_fields** | **List[str]** |  | [optional] 
**translated_fields** | **Dict[str, Optional[Dict[str, str]]]** |  | [optional] 

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


