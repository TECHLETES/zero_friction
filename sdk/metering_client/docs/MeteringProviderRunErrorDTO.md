# MeteringProviderRunErrorDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error_code** | **int** |  | [optional] 
**extra_info** | **List[str]** |  | [optional] 

## Example

```python
from metering_client.models.metering_provider_run_error_dto import MeteringProviderRunErrorDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringProviderRunErrorDTO from a JSON string
metering_provider_run_error_dto_instance = MeteringProviderRunErrorDTO.from_json(json)
# print the JSON string representation of the object
print(MeteringProviderRunErrorDTO.to_json())

# convert the object into a dict
metering_provider_run_error_dto_dict = metering_provider_run_error_dto_instance.to_dict()
# create an instance of MeteringProviderRunErrorDTO from a dict
metering_provider_run_error_dto_from_dict = MeteringProviderRunErrorDTO.from_dict(metering_provider_run_error_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


