# CommunicationConfigurationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**company_name** | **str** |  | [optional] 
**vat_account_number** | **str** |  | [optional] 
**company_account_number** | **str** |  | [optional] 
**logo** | **str** |  | [optional] 
**logo_cdn_url** | **str** |  | [optional] 
**primary_color** | **str** |  | [optional] 
**secondary_color** | **str** |  | [optional] 
**address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**contact_details** | [**PropertyGroupContactDetailsDTO**](PropertyGroupContactDetailsDTO.md) |  | [optional] 

## Example

```python
from masterdata_client.models.communication_configuration_dto import CommunicationConfigurationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CommunicationConfigurationDTO from a JSON string
communication_configuration_dto_instance = CommunicationConfigurationDTO.from_json(json)
# print the JSON string representation of the object
print(CommunicationConfigurationDTO.to_json())

# convert the object into a dict
communication_configuration_dto_dict = communication_configuration_dto_instance.to_dict()
# create an instance of CommunicationConfigurationDTO from a dict
communication_configuration_dto_from_dict = CommunicationConfigurationDTO.from_dict(communication_configuration_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


