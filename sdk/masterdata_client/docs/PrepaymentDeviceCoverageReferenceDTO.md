# PrepaymentDeviceCoverageReferenceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**prepayment_account** | [**PrepaymentAccountReferenceDTO**](PrepaymentAccountReferenceDTO.md) |  | [optional] 
**prepayment_device** | [**PrepaymentDeviceReferenceDTO**](PrepaymentDeviceReferenceDTO.md) |  | [optional] 
**services** | [**List[UtilityType]**](UtilityType.md) |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 

## Example

```python
from masterdata_client.models.prepayment_device_coverage_reference_dto import PrepaymentDeviceCoverageReferenceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PrepaymentDeviceCoverageReferenceDTO from a JSON string
prepayment_device_coverage_reference_dto_instance = PrepaymentDeviceCoverageReferenceDTO.from_json(json)
# print the JSON string representation of the object
print(PrepaymentDeviceCoverageReferenceDTO.to_json())

# convert the object into a dict
prepayment_device_coverage_reference_dto_dict = prepayment_device_coverage_reference_dto_instance.to_dict()
# create an instance of PrepaymentDeviceCoverageReferenceDTO from a dict
prepayment_device_coverage_reference_dto_from_dict = PrepaymentDeviceCoverageReferenceDTO.from_dict(prepayment_device_coverage_reference_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


