# MoveRequestOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** |  | [optional] 
**new** | **int** |  | [optional] 
**pending** | **int** |  | [optional] 
**processed** | **int** |  | [optional] 
**rejected** | **int** |  | [optional] 
**to_be_processed** | **int** |  | [optional] 

## Example

```python
from masterdata_client.models.move_request_overview_count_dto import MoveRequestOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MoveRequestOverviewCountDTO from a JSON string
move_request_overview_count_dto_instance = MoveRequestOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(MoveRequestOverviewCountDTO.to_json())

# convert the object into a dict
move_request_overview_count_dto_dict = move_request_overview_count_dto_instance.to_dict()
# create an instance of MoveRequestOverviewCountDTO from a dict
move_request_overview_count_dto_from_dict = MoveRequestOverviewCountDTO.from_dict(move_request_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


