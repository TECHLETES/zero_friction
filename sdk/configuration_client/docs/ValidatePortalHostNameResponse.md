# ValidatePortalHostNameResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**portal_settings** | [**PortalSettingsDTO**](PortalSettingsDTO.md) |  | [optional] 
**is_valid** | **bool** |  | [optional] 
**c_name_record_valid** | **bool** |  | [optional] 
**txt_record_valid** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.validate_portal_host_name_response import ValidatePortalHostNameResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ValidatePortalHostNameResponse from a JSON string
validate_portal_host_name_response_instance = ValidatePortalHostNameResponse.from_json(json)
# print the JSON string representation of the object
print(ValidatePortalHostNameResponse.to_json())

# convert the object into a dict
validate_portal_host_name_response_dict = validate_portal_host_name_response_instance.to_dict()
# create an instance of ValidatePortalHostNameResponse from a dict
validate_portal_host_name_response_from_dict = ValidatePortalHostNameResponse.from_dict(validate_portal_host_name_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


