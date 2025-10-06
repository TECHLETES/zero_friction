# GBRRegionalRegulationsConfigurationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**country_code** | [**CountryCode**](CountryCode.md) |  | [optional] 
**priority_register_parameters** | [**PriorityRegisterParametersDTO**](PriorityRegisterParametersDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.gbr_regional_regulations_configuration_dto import GBRRegionalRegulationsConfigurationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of GBRRegionalRegulationsConfigurationDTO from a JSON string
gbr_regional_regulations_configuration_dto_instance = GBRRegionalRegulationsConfigurationDTO.from_json(json)
# print the JSON string representation of the object
print(GBRRegionalRegulationsConfigurationDTO.to_json())

# convert the object into a dict
gbr_regional_regulations_configuration_dto_dict = gbr_regional_regulations_configuration_dto_instance.to_dict()
# create an instance of GBRRegionalRegulationsConfigurationDTO from a dict
gbr_regional_regulations_configuration_dto_from_dict = GBRRegionalRegulationsConfigurationDTO.from_dict(gbr_regional_regulations_configuration_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


