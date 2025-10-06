# MoveRequestDTO


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
**organisation_id** | **str** | Gets or sets the organization identifier. | [optional] 
**external_id** | **str** |  | [optional] 
**customer_details** | [**CustomerDetailsDTO**](CustomerDetailsDTO.md) |  | [optional] 
**service_location_details** | [**ServiceLocationDetailsDTO**](ServiceLocationDetailsDTO.md) |  | [optional] 
**measurement_details** | [**List[MeasurementDetailsDTO]**](MeasurementDetailsDTO.md) |  | [optional] 
**contract_details** | [**ContractDetailsDTO**](ContractDetailsDTO.md) |  | [optional] 
**move_request_type** | [**MoveRequestType**](MoveRequestType.md) |  | [optional] 
**status** | [**MoveRequestStatus**](MoveRequestStatus.md) |  | [optional] 
**mutation_date_time** | **datetime** |  | [optional] 
**custom_message** | **str** |  | [optional] 
**attachment_signatures** | [**List[AttachmentSignature]**](AttachmentSignature.md) |  | [optional] 
**has_any_errors** | **bool** |  | [optional] 

## Example

```python
from masterdata_client.models.move_request_dto import MoveRequestDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MoveRequestDTO from a JSON string
move_request_dto_instance = MoveRequestDTO.from_json(json)
# print the JSON string representation of the object
print(MoveRequestDTO.to_json())

# convert the object into a dict
move_request_dto_dict = move_request_dto_instance.to_dict()
# create an instance of MoveRequestDTO from a dict
move_request_dto_from_dict = MoveRequestDTO.from_dict(move_request_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


