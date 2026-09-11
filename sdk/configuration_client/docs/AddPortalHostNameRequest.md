# AddPortalHostNameRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**host_name** | **str** |  |

## Example

```python
from configuration_client.models.add_portal_host_name_request import AddPortalHostNameRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AddPortalHostNameRequest from a JSON string
add_portal_host_name_request_instance = AddPortalHostNameRequest.from_json(json)
# print the JSON string representation of the object
print(AddPortalHostNameRequest.to_json())

# convert the object into a dict
add_portal_host_name_request_dict = add_portal_host_name_request_instance.to_dict()
# create an instance of AddPortalHostNameRequest from a dict
add_portal_host_name_request_from_dict = AddPortalHostNameRequest.from_dict(add_portal_host_name_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
