# FRARegionalRegulationsConfigurationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**country_code** | [**CountryCode**](CountryCode.md) |  | [optional] 
**e_report_parameters** | [**FrenchEReportParametersDTO**](FrenchEReportParametersDTO.md) |  | [optional] 
**organisation_id** | **str** |  | [optional] 
**id** | **str** |  | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**created_date_time** | **datetime** |  | [optional] 
**discriminator** | **str** |  | [optional] 
**etag** | **str** |  | [optional] 
**has_errors** | **bool** |  | [optional] 
**is_read_only** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.fra_regional_regulations_configuration_dto import FRARegionalRegulationsConfigurationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FRARegionalRegulationsConfigurationDTO from a JSON string
fra_regional_regulations_configuration_dto_instance = FRARegionalRegulationsConfigurationDTO.from_json(json)
# print the JSON string representation of the object
print(FRARegionalRegulationsConfigurationDTO.to_json())

# convert the object into a dict
fra_regional_regulations_configuration_dto_dict = fra_regional_regulations_configuration_dto_instance.to_dict()
# create an instance of FRARegionalRegulationsConfigurationDTO from a dict
fra_regional_regulations_configuration_dto_from_dict = FRARegionalRegulationsConfigurationDTO.from_dict(fra_regional_regulations_configuration_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


