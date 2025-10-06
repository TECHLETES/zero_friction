# ServiceConsumptionBucketDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | **float** |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 

## Example

```python
from metering_client.models.service_consumption_bucket_dto import ServiceConsumptionBucketDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceConsumptionBucketDTO from a JSON string
service_consumption_bucket_dto_instance = ServiceConsumptionBucketDTO.from_json(json)
# print the JSON string representation of the object
print(ServiceConsumptionBucketDTO.to_json())

# convert the object into a dict
service_consumption_bucket_dto_dict = service_consumption_bucket_dto_instance.to_dict()
# create an instance of ServiceConsumptionBucketDTO from a dict
service_consumption_bucket_dto_from_dict = ServiceConsumptionBucketDTO.from_dict(service_consumption_bucket_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


