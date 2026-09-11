# ConsumerGroupDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | [optional]
**description** | **str** |  | [optional]
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional]
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional]
**estimated_annual_volume** | **float** |  | [optional]
**load_profile_id** | **str** |  | [optional]
**origin** | [**ConsumerGroupOrigin**](ConsumerGroupOrigin.md) |  | [optional]
**last_recalculated** | **datetime** |  | [optional]
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
from forecasting_client.models.consumer_group_dto import ConsumerGroupDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ConsumerGroupDTO from a JSON string
consumer_group_dto_instance = ConsumerGroupDTO.from_json(json)
# print the JSON string representation of the object
print(ConsumerGroupDTO.to_json())

# convert the object into a dict
consumer_group_dto_dict = consumer_group_dto_instance.to_dict()
# create an instance of ConsumerGroupDTO from a dict
consumer_group_dto_from_dict = ConsumerGroupDTO.from_dict(consumer_group_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
