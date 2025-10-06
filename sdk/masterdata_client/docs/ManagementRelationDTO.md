# ManagementRelationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **str** |  | [optional] 
**short_display_name** | **str** |  | [optional] 
**account_number** | **str** |  | [optional] 
**management_relation_type** | [**ManagementRelationType**](ManagementRelationType.md) |  | [optional] 

## Example

```python
from masterdata_client.models.management_relation_dto import ManagementRelationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ManagementRelationDTO from a JSON string
management_relation_dto_instance = ManagementRelationDTO.from_json(json)
# print the JSON string representation of the object
print(ManagementRelationDTO.to_json())

# convert the object into a dict
management_relation_dto_dict = management_relation_dto_instance.to_dict()
# create an instance of ManagementRelationDTO from a dict
management_relation_dto_from_dict = ManagementRelationDTO.from_dict(management_relation_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


