# EnvelopeSettingsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**margin_position** | [**EnvelopePosition**](EnvelopePosition.md) |  | [optional] 
**margin** | **int** |  | [optional] 
**margin_top** | **int** |  | [optional] 

## Example

```python
from configuration_client.models.envelope_settings_request import EnvelopeSettingsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of EnvelopeSettingsRequest from a JSON string
envelope_settings_request_instance = EnvelopeSettingsRequest.from_json(json)
# print the JSON string representation of the object
print(EnvelopeSettingsRequest.to_json())

# convert the object into a dict
envelope_settings_request_dict = envelope_settings_request_instance.to_dict()
# create an instance of EnvelopeSettingsRequest from a dict
envelope_settings_request_from_dict = EnvelopeSettingsRequest.from_dict(envelope_settings_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


