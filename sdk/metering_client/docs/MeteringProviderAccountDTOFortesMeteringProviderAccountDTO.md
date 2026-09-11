# MeteringProviderAccountDTOFortesMeteringProviderAccountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**authentication_api_token** | **str** |  | [optional]
**provider_type** | [**MeteringProviderType**](MeteringProviderType.md) |  | [optional]
**cron_expression** | **str** |  | [optional]
**status** | [**MeteringProviderAccountStatus**](MeteringProviderAccountStatus.md) |  | [optional]
**organisation_id** | **str** |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

## Example

```python
from metering_client.models.metering_provider_account_dto_fortes_metering_provider_account_dto import MeteringProviderAccountDTOFortesMeteringProviderAccountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringProviderAccountDTOFortesMeteringProviderAccountDTO from a JSON string
metering_provider_account_dto_fortes_metering_provider_account_dto_instance = MeteringProviderAccountDTOFortesMeteringProviderAccountDTO.from_json(json)
# print the JSON string representation of the object
print(MeteringProviderAccountDTOFortesMeteringProviderAccountDTO.to_json())

# convert the object into a dict
metering_provider_account_dto_fortes_metering_provider_account_dto_dict = metering_provider_account_dto_fortes_metering_provider_account_dto_instance.to_dict()
# create an instance of MeteringProviderAccountDTOFortesMeteringProviderAccountDTO from a dict
metering_provider_account_dto_fortes_metering_provider_account_dto_from_dict = MeteringProviderAccountDTOFortesMeteringProviderAccountDTO.from_dict(metering_provider_account_dto_fortes_metering_provider_account_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
