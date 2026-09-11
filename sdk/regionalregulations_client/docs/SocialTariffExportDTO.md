# SocialTariffExportDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **datetime** |  | [optional]
**end_date_time** | **datetime** |  | [optional]
**generated** | **bool** |  | [optional]
**internal_file_path** | **str** |  | [optional]
**filename** | **str** |  | [optional]
**type** | [**SocialTariffExportType**](SocialTariffExportType.md) |  | [optional]
**only_mutations** | **bool** |  | [optional]
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
from regionalregulations_client.models.social_tariff_export_dto import SocialTariffExportDTO

# TODO update the JSON string below
json = "{}"
# create an instance of SocialTariffExportDTO from a JSON string
social_tariff_export_dto_instance = SocialTariffExportDTO.from_json(json)
# print the JSON string representation of the object
print(SocialTariffExportDTO.to_json())

# convert the object into a dict
social_tariff_export_dto_dict = social_tariff_export_dto_instance.to_dict()
# create an instance of SocialTariffExportDTO from a dict
social_tariff_export_dto_from_dict = SocialTariffExportDTO.from_dict(social_tariff_export_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
