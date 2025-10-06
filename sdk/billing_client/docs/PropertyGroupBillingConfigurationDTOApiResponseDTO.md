# PropertyGroupBillingConfigurationDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**PropertyGroupBillingConfigurationDTO**](PropertyGroupBillingConfigurationDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from billing_client.models.property_group_billing_configuration_dto_api_response_dto import PropertyGroupBillingConfigurationDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PropertyGroupBillingConfigurationDTOApiResponseDTO from a JSON string
property_group_billing_configuration_dto_api_response_dto_instance = PropertyGroupBillingConfigurationDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(PropertyGroupBillingConfigurationDTOApiResponseDTO.to_json())

# convert the object into a dict
property_group_billing_configuration_dto_api_response_dto_dict = property_group_billing_configuration_dto_api_response_dto_instance.to_dict()
# create an instance of PropertyGroupBillingConfigurationDTOApiResponseDTO from a dict
property_group_billing_configuration_dto_api_response_dto_from_dict = PropertyGroupBillingConfigurationDTOApiResponseDTO.from_dict(property_group_billing_configuration_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


