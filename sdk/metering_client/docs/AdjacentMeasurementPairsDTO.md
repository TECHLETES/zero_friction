# AdjacentMeasurementPairsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pairs** | [**List[MeasurementPairDTO]**](MeasurementPairDTO.md) |  | [optional] 

## Example

```python
from metering_client.models.adjacent_measurement_pairs_dto import AdjacentMeasurementPairsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AdjacentMeasurementPairsDTO from a JSON string
adjacent_measurement_pairs_dto_instance = AdjacentMeasurementPairsDTO.from_json(json)
# print the JSON string representation of the object
print(AdjacentMeasurementPairsDTO.to_json())

# convert the object into a dict
adjacent_measurement_pairs_dto_dict = adjacent_measurement_pairs_dto_instance.to_dict()
# create an instance of AdjacentMeasurementPairsDTO from a dict
adjacent_measurement_pairs_dto_from_dict = AdjacentMeasurementPairsDTO.from_dict(adjacent_measurement_pairs_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


