# ServiceLocationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**display_address** | **str** |  | [optional] 
**property_group** | [**PropertyGroupReferenceDTO**](PropertyGroupReferenceDTO.md) |  | [optional] 
**product** | [**ProductReferenceDTO**](ProductReferenceDTO.md) |  | [optional] 
**management_relations** | [**List[ManagementRelationDTO]**](ManagementRelationDTO.md) |  | [optional] 
**services** | [**List[ServiceDTO]**](ServiceDTO.md) |  | [optional] 
**has_meters** | **bool** |  | [optional] 
**external_id** | **str** |  | [optional] 
**time_zone** | **str** |  | [optional] 
**custom_properties** | [**List[CustomEntityPropertyDTO]**](CustomEntityPropertyDTO.md) |  | [optional] 
**archived_at** | **datetime** |  | [optional] 
**last_time_received_data** | **datetime** |  | [optional] 
**has_recent_measurements** | **bool** |  | [optional] 
**is_auto_restored** | **bool** |  | [optional] 
**current_status** | [**ServiceStatus**](ServiceStatus.md) |  | [optional] 
**organisation_id** | **str** |  | [optional] 
**id** | **str** |  | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**created_date_time** | **datetime** |  | [optional] 
**discriminator** | **str** |  | [optional] 
**etag** | **str** |  | [optional] 
**has_errors** | **bool** |  | [optional] 
**is_read_only** | **bool** |  | [optional] 

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


