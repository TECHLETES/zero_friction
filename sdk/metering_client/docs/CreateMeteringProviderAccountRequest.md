# CreateMeteringProviderAccountRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider_type** | [**MeteringProviderType**](MeteringProviderType.md) |  |
**settings** | [**BaseMeteringProviderSettingsDTO**](BaseMeteringProviderSettingsDTO.md) |  |

## Example

```python
from metering_client.models.create_metering_provider_account_request import CreateMeteringProviderAccountRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateMeteringProviderAccountRequest from a JSON string
create_metering_provider_account_request_instance = CreateMeteringProviderAccountRequest.from_json(json)
# print the JSON string representation of the object
print(CreateMeteringProviderAccountRequest.to_json())

# convert the object into a dict
create_metering_provider_account_request_dict = create_metering_provider_account_request_instance.to_dict()
# create an instance of CreateMeteringProviderAccountRequest from a dict
create_metering_provider_account_request_from_dict = CreateMeteringProviderAccountRequest.from_dict(create_metering_provider_account_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
