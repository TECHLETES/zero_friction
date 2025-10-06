# SocialTariffExportDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Gets or sets the unique identifier. | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) | Gets or sets the type of the entity. | [optional] 
**created_date_time** | **datetime** | Gets or sets the date and time when the entity was created. | [optional] 
**discriminator** | **str** | Gets or sets the discriminator value. | [optional] 
**etag** | **str** | Gets or sets the ETag value. | [optional] 
**require_attention** | **bool** | Gets a value indicating whether the entity requires attention. | [optional] [readonly] 
**has_errors** | **bool** | Gets or sets a value indicating whether the entity has errors. | [optional] 
**has_warnings** | **bool** | Gets or sets a value indicating whether the entity has warnings. | [optional] 
**is_read_only** | **bool** | Gets or sets a value indicating whether the entity is read-only. | [optional] 
**organisation_id** | **str** | Gets or sets the organization identifier. | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**generated** | **bool** |  | [optional] 
**internal_file_path** | **str** |  | [optional] 
**filename** | **str** |  | [optional] 
**type** | [**SocialTariffExportType**](SocialTariffExportType.md) |  | [optional] 
**only_mutations** | **bool** |  | [optional] 

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


