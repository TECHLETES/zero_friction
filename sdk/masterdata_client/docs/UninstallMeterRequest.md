# UninstallMeterRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**remove_date** | **datetime** |  | [optional] 

## Example

```python
from masterdata_client.models.uninstall_meter_request import UninstallMeterRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UninstallMeterRequest from a JSON string
uninstall_meter_request_instance = UninstallMeterRequest.from_json(json)
# print the JSON string representation of the object
print(UninstallMeterRequest.to_json())

# convert the object into a dict
uninstall_meter_request_dict = uninstall_meter_request_instance.to_dict()
# create an instance of UninstallMeterRequest from a dict
uninstall_meter_request_from_dict = UninstallMeterRequest.from_dict(uninstall_meter_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


