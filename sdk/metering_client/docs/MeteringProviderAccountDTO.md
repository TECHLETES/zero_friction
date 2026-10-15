# MeteringProviderAccountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | 
**authentication_client_id** | **str** |  | [optional] 
**authentication_client_secret** | **str** |  | [optional] 
**endpoint_url** | **str** |  | [optional] 
**supported_building_numbers** | **List[int]** |  | [optional] 
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
**api_token** | **str** |  | [optional] 
**username** | **str** |  | [optional] 
**environment** | [**EnergyGripEnvironment**](EnergyGripEnvironment.md) |  | [optional] 
**authentication_api_token** | **str** |  | [optional] 
**application_id** | **str** |  | [optional] 
**application_key** | **str** |  | [optional] 
**password** | **str** |  | [optional] 
**utility_types** | [**List[UtilityType]**](UtilityType.md) |  | [optional] 

## Example

```python
from metering_client.models.metering_provider_account_dto import MeteringProviderAccountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringProviderAccountDTO from a JSON string
metering_provider_account_dto_instance = MeteringProviderAccountDTO.from_json(json)
# print the JSON string representation of the object
print(MeteringProviderAccountDTO.to_json())

# convert the object into a dict
metering_provider_account_dto_dict = metering_provider_account_dto_instance.to_dict()
# create an instance of MeteringProviderAccountDTO from a dict
metering_provider_account_dto_from_dict = MeteringProviderAccountDTO.from_dict(metering_provider_account_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


