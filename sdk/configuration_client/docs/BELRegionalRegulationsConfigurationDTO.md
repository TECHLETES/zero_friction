# BELRegionalRegulationsConfigurationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**country_code** | [**CountryCode**](CountryCode.md) |  | [optional] 
**social_tariff_parameters** | [**SocialTariffParametersDTO**](SocialTariffParametersDTO.md) |  | [optional] 
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
from configuration_client.models.bel_regional_regulations_configuration_dto import BELRegionalRegulationsConfigurationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BELRegionalRegulationsConfigurationDTO from a JSON string
bel_regional_regulations_configuration_dto_instance = BELRegionalRegulationsConfigurationDTO.from_json(json)
# print the JSON string representation of the object
print(BELRegionalRegulationsConfigurationDTO.to_json())

# convert the object into a dict
bel_regional_regulations_configuration_dto_dict = bel_regional_regulations_configuration_dto_instance.to_dict()
# create an instance of BELRegionalRegulationsConfigurationDTO from a dict
bel_regional_regulations_configuration_dto_from_dict = BELRegionalRegulationsConfigurationDTO.from_dict(bel_regional_regulations_configuration_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


