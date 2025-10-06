# UpdateMeterTagRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**meter_tag** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.update_meter_tag_request import UpdateMeterTagRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateMeterTagRequest from a JSON string
update_meter_tag_request_instance = UpdateMeterTagRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateMeterTagRequest.to_json())

# convert the object into a dict
update_meter_tag_request_dict = update_meter_tag_request_instance.to_dict()
# create an instance of UpdateMeterTagRequest from a dict
update_meter_tag_request_from_dict = UpdateMeterTagRequest.from_dict(update_meter_tag_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


