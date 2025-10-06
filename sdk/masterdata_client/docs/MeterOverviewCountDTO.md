# MeterOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** |  | [optional] 
**installed** | **int** |  | [optional] 
**inactive** | **int** |  | [optional] 

## Example

```python
from masterdata_client.models.meter_overview_count_dto import MeterOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeterOverviewCountDTO from a JSON string
meter_overview_count_dto_instance = MeterOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(MeterOverviewCountDTO.to_json())

# convert the object into a dict
meter_overview_count_dto_dict = meter_overview_count_dto_instance.to_dict()
# create an instance of MeterOverviewCountDTO from a dict
meter_overview_count_dto_from_dict = MeterOverviewCountDTO.from_dict(meter_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


