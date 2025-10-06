# ExternalChannelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**data_frequency** | [**DataFrequency**](DataFrequency.md) |  | [optional] 
**incrementation_type** | [**IncrementationType**](IncrementationType.md) |  | [optional] 
**metering_type** | [**MeteringType**](MeteringType.md) |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**direction** | [**Direction**](Direction.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**time_of_use** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**external_identifier** | **str** |  | [optional] 
**last_time_received_data** | **datetime** |  | [optional] 
**measurements_until** | **datetime** |  | [optional] 
**relation_external_reference** | **str** |  | [optional] 
**issues_count** | **int** |  | [optional] 
**has_issue** | **bool** |  | [optional] [readonly] 
**issues** | [**List[MeteringIssueReference]**](MeteringIssueReference.md) |  | [optional] 
**built_in** | **bool** |  | [optional] 
**hidden** | **bool** |  | [optional] 

## Example

```python
from masterdata_client.models.external_channel_dto import ExternalChannelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ExternalChannelDTO from a JSON string
external_channel_dto_instance = ExternalChannelDTO.from_json(json)
# print the JSON string representation of the object
print(ExternalChannelDTO.to_json())

# convert the object into a dict
external_channel_dto_dict = external_channel_dto_instance.to_dict()
# create an instance of ExternalChannelDTO from a dict
external_channel_dto_from_dict = ExternalChannelDTO.from_dict(external_channel_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


