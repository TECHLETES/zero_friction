# UpdatePropertyGroupCommunicationConfigurationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**company_name** | **str** |  | [optional] 
**vat_account_number** | **str** |  | [optional] 
**company_account_number** | **str** |  | [optional] 
**primary_color** | **str** |  | [optional] 
**secondary_color** | **str** |  | [optional] 
**address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**logo** | **str** |  | [optional] 
**contact_details** | [**PropertyGroupContactDetailsRequest**](PropertyGroupContactDetailsRequest.md) |  | [optional] 

## Example

```python
from masterdata_client.models.update_property_group_communication_configuration_request import UpdatePropertyGroupCommunicationConfigurationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdatePropertyGroupCommunicationConfigurationRequest from a JSON string
update_property_group_communication_configuration_request_instance = UpdatePropertyGroupCommunicationConfigurationRequest.from_json(json)
# print the JSON string representation of the object
print(UpdatePropertyGroupCommunicationConfigurationRequest.to_json())

# convert the object into a dict
update_property_group_communication_configuration_request_dict = update_property_group_communication_configuration_request_instance.to_dict()
# create an instance of UpdatePropertyGroupCommunicationConfigurationRequest from a dict
update_property_group_communication_configuration_request_from_dict = UpdatePropertyGroupCommunicationConfigurationRequest.from_dict(update_property_group_communication_configuration_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


