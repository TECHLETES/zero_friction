# CreatePropertyGroupPrepaymentConfigurationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**prepayment_profile_id** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.create_property_group_prepayment_configuration_request import CreatePropertyGroupPrepaymentConfigurationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreatePropertyGroupPrepaymentConfigurationRequest from a JSON string
create_property_group_prepayment_configuration_request_instance = CreatePropertyGroupPrepaymentConfigurationRequest.from_json(json)
# print the JSON string representation of the object
print(CreatePropertyGroupPrepaymentConfigurationRequest.to_json())

# convert the object into a dict
create_property_group_prepayment_configuration_request_dict = create_property_group_prepayment_configuration_request_instance.to_dict()
# create an instance of CreatePropertyGroupPrepaymentConfigurationRequest from a dict
create_property_group_prepayment_configuration_request_from_dict = CreatePropertyGroupPrepaymentConfigurationRequest.from_dict(create_property_group_prepayment_configuration_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


