# ManagementRelationDTO2


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **str** |  | [optional] 
**short_display_name** | **str** |  | [optional] 
**account_number** | **str** |  | [optional] 
**management_relation_type** | [**ManagementRelationType**](ManagementRelationType.md) |  | [optional] 

## Example

```python
from masterdata_client.models.management_relation_dto2 import ManagementRelationDTO2

# TODO update the JSON string below
json = "{}"
# create an instance of ManagementRelationDTO2 from a JSON string
management_relation_dto2_instance = ManagementRelationDTO2.from_json(json)
# print the JSON string representation of the object
print(ManagementRelationDTO2.to_json())

# convert the object into a dict
management_relation_dto2_dict = management_relation_dto2_instance.to_dict()
# create an instance of ManagementRelationDTO2 from a dict
management_relation_dto2_from_dict = ManagementRelationDTO2.from_dict(management_relation_dto2_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


