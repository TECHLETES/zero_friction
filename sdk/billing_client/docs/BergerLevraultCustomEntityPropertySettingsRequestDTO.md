# BergerLevraultCustomEntityPropertySettingsRequestDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_nature_cepid** | **str** |  | [optional] 
**customer_category_cepid** | **str** |  | [optional] 
**property_group_e_cadre_budgetaire_cepid** | **str** |  | [optional] 
**property_group_sector_code_cepid** | **str** |  | [optional] 
**property_group_budgeting_framework_cepid** | **str** |  | [optional] 

## Example

```python
from billing_client.models.berger_levrault_custom_entity_property_settings_request_dto import BergerLevraultCustomEntityPropertySettingsRequestDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BergerLevraultCustomEntityPropertySettingsRequestDTO from a JSON string
berger_levrault_custom_entity_property_settings_request_dto_instance = BergerLevraultCustomEntityPropertySettingsRequestDTO.from_json(json)
# print the JSON string representation of the object
print(BergerLevraultCustomEntityPropertySettingsRequestDTO.to_json())

# convert the object into a dict
berger_levrault_custom_entity_property_settings_request_dto_dict = berger_levrault_custom_entity_property_settings_request_dto_instance.to_dict()
# create an instance of BergerLevraultCustomEntityPropertySettingsRequestDTO from a dict
berger_levrault_custom_entity_property_settings_request_dto_from_dict = BergerLevraultCustomEntityPropertySettingsRequestDTO.from_dict(berger_levrault_custom_entity_property_settings_request_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


