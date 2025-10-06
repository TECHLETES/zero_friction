# AddSubMeterRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sub_meter_id** | **str** |  | [optional] 
**external_reference** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.add_sub_meter_request import AddSubMeterRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AddSubMeterRequest from a JSON string
add_sub_meter_request_instance = AddSubMeterRequest.from_json(json)
# print the JSON string representation of the object
print(AddSubMeterRequest.to_json())

# convert the object into a dict
add_sub_meter_request_dict = add_sub_meter_request_instance.to_dict()
# create an instance of AddSubMeterRequest from a dict
add_sub_meter_request_from_dict = AddSubMeterRequest.from_dict(add_sub_meter_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


