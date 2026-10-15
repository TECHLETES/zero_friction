# SocialTariffParametersRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kbo_number** | **str** |  | 
**gln_id** | **str** |  | 
**supplier_address** | [**AddressDTO**](AddressDTO.md) |  | 
**contact_email_address** | **str** |  | 
**contact_telephone_number** | **str** |  | 
**contact_fax_number** | **str** |  | [optional] 
**contact_last_name** | **str** |  | 
**contact_first_name** | **str** |  | 
**social_tariff_custom_entity_property_id** | **str** |  | 
**share_props_with_government_custom_entity_property_id** | **str** |  | 
**bim_custom_entity_property_id** | **str** |  | 

## Example

```python
from configuration_client.models.social_tariff_parameters_request import SocialTariffParametersRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SocialTariffParametersRequest from a JSON string
social_tariff_parameters_request_instance = SocialTariffParametersRequest.from_json(json)
# print the JSON string representation of the object
print(SocialTariffParametersRequest.to_json())

# convert the object into a dict
social_tariff_parameters_request_dict = social_tariff_parameters_request_instance.to_dict()
# create an instance of SocialTariffParametersRequest from a dict
social_tariff_parameters_request_from_dict = SocialTariffParametersRequest.from_dict(social_tariff_parameters_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


