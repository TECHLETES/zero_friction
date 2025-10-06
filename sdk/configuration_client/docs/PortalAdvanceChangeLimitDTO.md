# PortalAdvanceChangeLimitDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**range_min** | **float** |  | [optional] 
**range_max** | **float** |  | [optional] 
**type** | [**AdvanceAmountLimitType**](AdvanceAmountLimitType.md) |  | [optional] 

## Example

```python
from configuration_client.models.portal_advance_change_limit_dto import PortalAdvanceChangeLimitDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PortalAdvanceChangeLimitDTO from a JSON string
portal_advance_change_limit_dto_instance = PortalAdvanceChangeLimitDTO.from_json(json)
# print the JSON string representation of the object
print(PortalAdvanceChangeLimitDTO.to_json())

# convert the object into a dict
portal_advance_change_limit_dto_dict = portal_advance_change_limit_dto_instance.to_dict()
# create an instance of PortalAdvanceChangeLimitDTO from a dict
portal_advance_change_limit_dto_from_dict = PortalAdvanceChangeLimitDTO.from_dict(portal_advance_change_limit_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


