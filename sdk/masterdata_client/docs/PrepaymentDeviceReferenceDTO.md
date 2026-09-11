# PrepaymentDeviceReferenceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional]
**serial_number** | **str** |  | [optional]

## Example

```python
from masterdata_client.models.prepayment_device_reference_dto import PrepaymentDeviceReferenceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PrepaymentDeviceReferenceDTO from a JSON string
prepayment_device_reference_dto_instance = PrepaymentDeviceReferenceDTO.from_json(json)
# print the JSON string representation of the object
print(PrepaymentDeviceReferenceDTO.to_json())

# convert the object into a dict
prepayment_device_reference_dto_dict = prepayment_device_reference_dto_instance.to_dict()
# create an instance of PrepaymentDeviceReferenceDTO from a dict
prepayment_device_reference_dto_from_dict = PrepaymentDeviceReferenceDTO.from_dict(prepayment_device_reference_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
