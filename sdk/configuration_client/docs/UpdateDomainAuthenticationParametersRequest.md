# UpdateDomainAuthenticationParametersRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain_name** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.update_domain_authentication_parameters_request import UpdateDomainAuthenticationParametersRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateDomainAuthenticationParametersRequest from a JSON string
update_domain_authentication_parameters_request_instance = UpdateDomainAuthenticationParametersRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateDomainAuthenticationParametersRequest.to_json())

# convert the object into a dict
update_domain_authentication_parameters_request_dict = update_domain_authentication_parameters_request_instance.to_dict()
# create an instance of UpdateDomainAuthenticationParametersRequest from a dict
update_domain_authentication_parameters_request_from_dict = UpdateDomainAuthenticationParametersRequest.from_dict(update_domain_authentication_parameters_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


