# PortalAdvanceChangeLimitRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**range_min** | **float** |  | [optional] 
**range_max** | **float** |  | [optional] 
**type** | [**AdvanceAmountLimitType**](AdvanceAmountLimitType.md) |  | [optional] 

## Example

```python
from configuration_client.models.portal_advance_change_limit_request import PortalAdvanceChangeLimitRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PortalAdvanceChangeLimitRequest from a JSON string
portal_advance_change_limit_request_instance = PortalAdvanceChangeLimitRequest.from_json(json)
# print the JSON string representation of the object
print(PortalAdvanceChangeLimitRequest.to_json())

# convert the object into a dict
portal_advance_change_limit_request_dict = portal_advance_change_limit_request_instance.to_dict()
# create an instance of PortalAdvanceChangeLimitRequest from a dict
portal_advance_change_limit_request_from_dict = PortalAdvanceChangeLimitRequest.from_dict(portal_advance_change_limit_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


