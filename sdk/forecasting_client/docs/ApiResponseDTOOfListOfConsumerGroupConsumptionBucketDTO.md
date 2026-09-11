# ApiResponseDTOOfListOfConsumerGroupConsumptionBucketDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[ConsumerGroupConsumptionBucketDTO]**](ConsumerGroupConsumptionBucketDTO.md) |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**success** | **bool** |  | [optional]
**applicable_entities_count** | **int** |  | [optional]
**requested_entities_count** | **int** |  | [optional]
**succeeded_entities_count** | **int** |  | [optional]
**is_synchronous** | **bool** |  | [optional]

## Example

```python
from forecasting_client.models.api_response_dtoof_list_of_consumer_group_consumption_bucket_dto import ApiResponseDTOOfListOfConsumerGroupConsumptionBucketDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfListOfConsumerGroupConsumptionBucketDTO from a JSON string
api_response_dtoof_list_of_consumer_group_consumption_bucket_dto_instance = ApiResponseDTOOfListOfConsumerGroupConsumptionBucketDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfListOfConsumerGroupConsumptionBucketDTO.to_json())

# convert the object into a dict
api_response_dtoof_list_of_consumer_group_consumption_bucket_dto_dict = api_response_dtoof_list_of_consumer_group_consumption_bucket_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfListOfConsumerGroupConsumptionBucketDTO from a dict
api_response_dtoof_list_of_consumer_group_consumption_bucket_dto_from_dict = ApiResponseDTOOfListOfConsumerGroupConsumptionBucketDTO.from_dict(api_response_dtoof_list_of_consumer_group_consumption_bucket_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
