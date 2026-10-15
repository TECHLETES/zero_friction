# StartCommunicationProviderOnboardingRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider_type** | [**CommunicationProviderType**](CommunicationProviderType.md) |  | [optional] 

## Example

```python
from communication_client.models.start_communication_provider_onboarding_request import StartCommunicationProviderOnboardingRequest

# TODO update the JSON string below
json = "{}"
# create an instance of StartCommunicationProviderOnboardingRequest from a JSON string
start_communication_provider_onboarding_request_instance = StartCommunicationProviderOnboardingRequest.from_json(json)
# print the JSON string representation of the object
print(StartCommunicationProviderOnboardingRequest.to_json())

# convert the object into a dict
start_communication_provider_onboarding_request_dict = start_communication_provider_onboarding_request_instance.to_dict()
# create an instance of StartCommunicationProviderOnboardingRequest from a dict
start_communication_provider_onboarding_request_from_dict = StartCommunicationProviderOnboardingRequest.from_dict(start_communication_provider_onboarding_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


