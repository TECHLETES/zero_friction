# CreateCommunicationProviderAccountRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider_type** | [**CommunicationProviderType**](CommunicationProviderType.md) |  | [optional]

## Example

```python
from communication_client.models.create_communication_provider_account_request import CreateCommunicationProviderAccountRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateCommunicationProviderAccountRequest from a JSON string
create_communication_provider_account_request_instance = CreateCommunicationProviderAccountRequest.from_json(json)
# print the JSON string representation of the object
print(CreateCommunicationProviderAccountRequest.to_json())

# convert the object into a dict
create_communication_provider_account_request_dict = create_communication_provider_account_request_instance.to_dict()
# create an instance of CreateCommunicationProviderAccountRequest from a dict
create_communication_provider_account_request_from_dict = CreateCommunicationProviderAccountRequest.from_dict(create_communication_provider_account_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
