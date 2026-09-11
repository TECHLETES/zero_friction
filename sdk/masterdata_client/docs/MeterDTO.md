# MeterDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serial_number** | **str** |  | [optional]
**meter_tag** | **str** |  | [optional]
**meter_type** | [**MeterType**](MeterType.md) |  | [optional]
**model_id** | **str** |  | [optional]
**status_history** | [**List[MeterStatusHistoryDTO]**](MeterStatusHistoryDTO.md) |  | [optional]
**channels** | [**List[ExternalChannelDTO]**](ExternalChannelDTO.md) |  | [optional]
**last_time_received_data** | **datetime** |  | [optional]
**measurements_until** | **datetime** |  | [optional]
**parent_meter_relation** | [**MeterRelationDTO**](MeterRelationDTO.md) |  | [optional]
**property_group** | [**PropertyGroupReferenceDTO**](PropertyGroupReferenceDTO.md) |  | [optional]
**time_zone** | **str** |  | [optional]
**custom_properties** | [**List[CustomEntityPropertyDTO]**](CustomEntityPropertyDTO.md) |  | [optional]
**measurement_issues_count** | **int** |  | [optional]
**meter_issues_count** | **int** |  | [optional]
**issues_count** | **int** |  | [optional]
**has_issue** | **bool** |  | [optional]
**issues** | [**List[MeteringIssueReference]**](MeteringIssueReference.md) |  | [optional]
**reading_frequency** | [**MeterReadingFrequency**](MeterReadingFrequency.md) |  | [optional]
**next_expected_reading_date** | **datetime** |  | [optional]
**deleted** | **bool** |  | [optional]
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
