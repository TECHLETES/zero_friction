# MeteringProviderRunDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider_type** | [**MeteringProviderType**](MeteringProviderType.md) |  | [optional]
**provider_id** | **str** |  | [optional]
**status** | [**MeteringProviderRunStatus**](MeteringProviderRunStatus.md) |  | [optional]
**errors** | [**List[MeteringProviderRunErrorDTO]**](MeteringProviderRunErrorDTO.md) |  | [optional]
**completed_date** | **datetime** |  | [optional]
**started_date** | **datetime** |  | [optional]
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
from metering_client.models.metering_provider_run_dto import MeteringProviderRunDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringProviderRunDTO from a JSON string
metering_provider_run_dto_instance = MeteringProviderRunDTO.from_json(json)
# print the JSON string representation of the object
print(MeteringProviderRunDTO.to_json())

# convert the object into a dict
metering_provider_run_dto_dict = metering_provider_run_dto_instance.to_dict()
# create an instance of MeteringProviderRunDTO from a dict
metering_provider_run_dto_from_dict = MeteringProviderRunDTO.from_dict(metering_provider_run_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
