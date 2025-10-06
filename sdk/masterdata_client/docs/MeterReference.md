# MeterReference


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**meter_id** | **str** |  | [optional] 
**serial_number** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.meter_reference import MeterReference

# TODO update the JSON string below
json = "{}"
# create an instance of MeterReference from a JSON string
meter_reference_instance = MeterReference.from_json(json)
# print the JSON string representation of the object
print(MeterReference.to_json())

# convert the object into a dict
meter_reference_dict = meter_reference_instance.to_dict()
# create an instance of MeterReference from a dict
meter_reference_from_dict = MeterReference.from_dict(meter_reference_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


