# EnvelopeSettingsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**margin_position** | [**EnvelopePosition**](EnvelopePosition.md) |  | [optional] 
**margin** | **int** |  | [optional] 
**margin_top** | **int** |  | [optional] 

## Example

```python
from configuration_client.models.envelope_settings_dto import EnvelopeSettingsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EnvelopeSettingsDTO from a JSON string
envelope_settings_dto_instance = EnvelopeSettingsDTO.from_json(json)
# print the JSON string representation of the object
print(EnvelopeSettingsDTO.to_json())

# convert the object into a dict
envelope_settings_dto_dict = envelope_settings_dto_instance.to_dict()
# create an instance of EnvelopeSettingsDTO from a dict
envelope_settings_dto_from_dict = EnvelopeSettingsDTO.from_dict(envelope_settings_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


