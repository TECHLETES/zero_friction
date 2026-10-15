# PropertyGroupDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**default_management_relations** | [**List[ManagementRelationDTO]**](ManagementRelationDTO.md) |  | [optional] 
**service_location_ids** | **List[str]** |  | [optional] 
**type** | [**PropertyGroupType**](PropertyGroupType.md) |  | [optional] 
**cost_allocation_enabled** | **bool** |  | [optional] 
**communication_configuration** | [**CommunicationConfigurationDTO**](CommunicationConfigurationDTO.md) |  | [optional] 
**custom_properties** | [**List[CustomEntityPropertyDTO]**](CustomEntityPropertyDTO.md) |  | [optional] 
**deleted** | **bool** |  | [optional] 
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
from masterdata_client.models.property_group_dto import PropertyGroupDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PropertyGroupDTO from a JSON string
property_group_dto_instance = PropertyGroupDTO.from_json(json)
# print the JSON string representation of the object
print(PropertyGroupDTO.to_json())

# convert the object into a dict
property_group_dto_dict = property_group_dto_instance.to_dict()
# create an instance of PropertyGroupDTO from a dict
property_group_dto_from_dict = PropertyGroupDTO.from_dict(property_group_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


