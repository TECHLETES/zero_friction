# MeterDTO


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
**serial_number** | **str** |  | [optional] 
**meter_tag** | **str** |  | [optional] 
**meter_type** | [**MeterType**](MeterType.md) |  | [optional] 
**model_id** | **str** |  | [optional] 
**status_history** | [**List[MeterStatusHistoryDTO]**](MeterStatusHistoryDTO.md) |  | [optional] 
**channels** | [**List[ExternalChannelDTO]**](ExternalChannelDTO.md) | By default only contains not hidden channels. If you want to get hidden channels, call /md/meters/{meterId}?showhiddenchannels&#x3D;true | [optional] 
**last_time_received_data** | **datetime** |  | [optional] [readonly] 
**measurements_until** | **datetime** |  | [optional] [readonly] 
**parent_meter_relation** | [**MeterRelationDTO**](MeterRelationDTO.md) |  | [optional] 
**property_group** | [**PropertyGroupReferenceDTO**](PropertyGroupReferenceDTO.md) |  | [optional] 
**time_zone** | **str** |  | [optional] 
**meter_properties** | **object** |  | [optional] 
**custom_properties** | [**List[CustomEntityPropertyDTO]**](CustomEntityPropertyDTO.md) |  | [optional] 
**measurement_issues_count** | **int** |  | [optional] 
**meter_issues_count** | **int** |  | [optional] 
**issues_count** | **int** |  | [optional] [readonly] 
**has_issue** | **bool** |  | [optional] [readonly] 
**issues** | [**List[MeteringIssueReference]**](MeteringIssueReference.md) |  | [optional] 
**reading_frequency** | [**MeterReadingFrequency**](MeterReadingFrequency.md) |  | [optional] 
**next_expected_reading_date** | **datetime** |  | [optional] 

## Example

```python
from masterdata_client.models.meter_dto import MeterDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeterDTO from a JSON string
meter_dto_instance = MeterDTO.from_json(json)
# print the JSON string representation of the object
print(MeterDTO.to_json())

# convert the object into a dict
meter_dto_dict = meter_dto_instance.to_dict()
# create an instance of MeterDTO from a dict
meter_dto_from_dict = MeterDTO.from_dict(meter_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


