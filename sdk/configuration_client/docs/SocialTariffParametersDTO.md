# SocialTariffParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kbo_number** | **str** |  | [optional] 
**gln_id** | **str** |  | [optional] 
**supplier_address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**contact_email_address** | **str** |  | [optional] 
**contact_telephone_number** | **str** |  | [optional] 
**contact_fax_number** | **str** |  | [optional] 
**contact_last_name** | **str** |  | [optional] 
**contact_first_name** | **str** |  | [optional] 
**social_tariff_custom_entity_property_id** | **str** |  | [optional] 
**share_props_with_government_custom_entity_property_id** | **str** |  | [optional] 
**bim_custom_entity_property_id** | **str** |  | [optional] 
**configured** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.social_tariff_parameters_dto import SocialTariffParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of SocialTariffParametersDTO from a JSON string
social_tariff_parameters_dto_instance = SocialTariffParametersDTO.from_json(json)
# print the JSON string representation of the object
print(SocialTariffParametersDTO.to_json())

# convert the object into a dict
social_tariff_parameters_dto_dict = social_tariff_parameters_dto_instance.to_dict()
# create an instance of SocialTariffParametersDTO from a dict
social_tariff_parameters_dto_from_dict = SocialTariffParametersDTO.from_dict(social_tariff_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


