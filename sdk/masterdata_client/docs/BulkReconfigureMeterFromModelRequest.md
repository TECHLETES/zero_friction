# BulkReconfigureMeterFromModelRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetMetersQueryParams**](GetMetersQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 
**mutation_date_time** | **datetime** |  | [optional] 
**model_id** | **str** |  | [optional] 
**use_beginning_of_meter** | **bool** |  | [optional] 

## Example

```python
from masterdata_client.models.bulk_reconfigure_meter_from_model_request import BulkReconfigureMeterFromModelRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkReconfigureMeterFromModelRequest from a JSON string
bulk_reconfigure_meter_from_model_request_instance = BulkReconfigureMeterFromModelRequest.from_json(json)
# print the JSON string representation of the object
print(BulkReconfigureMeterFromModelRequest.to_json())

# convert the object into a dict
bulk_reconfigure_meter_from_model_request_dict = bulk_reconfigure_meter_from_model_request_instance.to_dict()
# create an instance of BulkReconfigureMeterFromModelRequest from a dict
bulk_reconfigure_meter_from_model_request_from_dict = BulkReconfigureMeterFromModelRequest.from_dict(bulk_reconfigure_meter_from_model_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


