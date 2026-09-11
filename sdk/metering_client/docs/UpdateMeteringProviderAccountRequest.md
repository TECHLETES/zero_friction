# UpdateMeteringProviderAccountRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider_type** | [**MeteringProviderType**](MeteringProviderType.md) |  |
**settings** | [**BaseMeteringProviderSettingsDTO**](BaseMeteringProviderSettingsDTO.md) |  |

## Example

```python
from metering_client.models.update_metering_provider_account_request import UpdateMeteringProviderAccountRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateMeteringProviderAccountRequest from a JSON string
update_metering_provider_account_request_instance = UpdateMeteringProviderAccountRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateMeteringProviderAccountRequest.to_json())

# convert the object into a dict
update_metering_provider_account_request_dict = update_metering_provider_account_request_instance.to_dict()
# create an instance of UpdateMeteringProviderAccountRequest from a dict
update_metering_provider_account_request_from_dict = UpdateMeteringProviderAccountRequest.from_dict(update_metering_provider_account_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
