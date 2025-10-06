# ServiceLocationDTO


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
**address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**display_address** | **str** |  | [optional] 
**property_group** | [**PropertyGroupReferenceDTO**](PropertyGroupReferenceDTO.md) |  | [optional] 
**product** | [**ProductReferenceDTO**](ProductReferenceDTO.md) |  | [optional] 
**management_relations** | [**List[ManagementRelationDTO2]**](ManagementRelationDTO2.md) |  | [optional] 
**services** | [**List[ServiceDTO]**](ServiceDTO.md) |  | [optional] 
**has_meters** | **bool** |  | [optional] 
**external_id** | **str** |  | [optional] 
**time_zone** | **str** |  | [optional] 
**custom_properties** | [**List[CustomEntityPropertyDTO]**](CustomEntityPropertyDTO.md) |  | [optional] 
**current_status** | [**ServiceStatus**](ServiceStatus.md) |  | [optional] [readonly] 

## Example

```python
from masterdata_client.models.service_location_dto import ServiceLocationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceLocationDTO from a JSON string
service_location_dto_instance = ServiceLocationDTO.from_json(json)
# print the JSON string representation of the object
print(ServiceLocationDTO.to_json())

# convert the object into a dict
service_location_dto_dict = service_location_dto_instance.to_dict()
# create an instance of ServiceLocationDTO from a dict
service_location_dto_from_dict = ServiceLocationDTO.from_dict(service_location_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


