# PrepaymentMeterInstalledDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**meter** | [**MeterDTO**](MeterDTO.md) |  | [optional] 
**utility_types_on_start_date** | [**List[UtilityType]**](UtilityType.md) |  | [optional] 

## Example

```python
from masterdata_client.models.prepayment_meter_installed_dto import PrepaymentMeterInstalledDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PrepaymentMeterInstalledDTO from a JSON string
prepayment_meter_installed_dto_instance = PrepaymentMeterInstalledDTO.from_json(json)
# print the JSON string representation of the object
print(PrepaymentMeterInstalledDTO.to_json())

# convert the object into a dict
prepayment_meter_installed_dto_dict = prepayment_meter_installed_dto_instance.to_dict()
# create an instance of PrepaymentMeterInstalledDTO from a dict
prepayment_meter_installed_dto_from_dict = PrepaymentMeterInstalledDTO.from_dict(prepayment_meter_installed_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


