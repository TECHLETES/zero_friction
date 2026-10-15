# EstimatedConsumptionBucketDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**value** | **float** |  | [optional] 

## Example

```python
from forecasting_client.models.estimated_consumption_bucket_dto import EstimatedConsumptionBucketDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EstimatedConsumptionBucketDTO from a JSON string
estimated_consumption_bucket_dto_instance = EstimatedConsumptionBucketDTO.from_json(json)
# print the JSON string representation of the object
print(EstimatedConsumptionBucketDTO.to_json())

# convert the object into a dict
estimated_consumption_bucket_dto_dict = estimated_consumption_bucket_dto_instance.to_dict()
# create an instance of EstimatedConsumptionBucketDTO from a dict
estimated_consumption_bucket_dto_from_dict = EstimatedConsumptionBucketDTO.from_dict(estimated_consumption_bucket_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


