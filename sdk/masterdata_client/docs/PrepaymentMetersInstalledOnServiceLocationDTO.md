# PrepaymentMetersInstalledOnServiceLocationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_location_id** | **str** |  | [optional] 
**meters** | [**List[PrepaymentMeterInstalledDTO]**](PrepaymentMeterInstalledDTO.md) |  | [optional] 
**has_ppm_meter_coverage** | **bool** |  | [optional] 

## Example

```python
from masterdata_client.models.prepayment_meters_installed_on_service_location_dto import PrepaymentMetersInstalledOnServiceLocationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PrepaymentMetersInstalledOnServiceLocationDTO from a JSON string
prepayment_meters_installed_on_service_location_dto_instance = PrepaymentMetersInstalledOnServiceLocationDTO.from_json(json)
# print the JSON string representation of the object
print(PrepaymentMetersInstalledOnServiceLocationDTO.to_json())

# convert the object into a dict
prepayment_meters_installed_on_service_location_dto_dict = prepayment_meters_installed_on_service_location_dto_instance.to_dict()
# create an instance of PrepaymentMetersInstalledOnServiceLocationDTO from a dict
prepayment_meters_installed_on_service_location_dto_from_dict = PrepaymentMetersInstalledOnServiceLocationDTO.from_dict(prepayment_meters_installed_on_service_location_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


