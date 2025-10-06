# OrganizationParametersDataObject


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_parameters** | [**BillingParametersDataObject**](BillingParametersDataObject.md) |  | [optional] 

## Example

```python
from attachments_client.models.organization_parameters_data_object import OrganizationParametersDataObject

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationParametersDataObject from a JSON string
organization_parameters_data_object_instance = OrganizationParametersDataObject.from_json(json)
# print the JSON string representation of the object
print(OrganizationParametersDataObject.to_json())

# convert the object into a dict
organization_parameters_data_object_dict = organization_parameters_data_object_instance.to_dict()
# create an instance of OrganizationParametersDataObject from a dict
organization_parameters_data_object_from_dict = OrganizationParametersDataObject.from_dict(organization_parameters_data_object_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


