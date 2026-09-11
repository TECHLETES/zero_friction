# SubscriptionAskingPeriodDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**complete** | **bool** |  | [optional] 
**input_missing_reason** | [**InputMissingReason**](InputMissingReason.md) |  | [optional] 
**validation_errors** | [**List[RequiredQuantityValidationErrorDTO]**](RequiredQuantityValidationErrorDTO.md) |  | [optional] 

## Example

```python
from billing_client.models.subscription_asking_period_dto import SubscriptionAskingPeriodDTO

# TODO update the JSON string below
json = "{}"
# create an instance of SubscriptionAskingPeriodDTO from a JSON string
subscription_asking_period_dto_instance = SubscriptionAskingPeriodDTO.from_json(json)
# print the JSON string representation of the object
print(SubscriptionAskingPeriodDTO.to_json())

# convert the object into a dict
subscription_asking_period_dto_dict = subscription_asking_period_dto_instance.to_dict()
# create an instance of SubscriptionAskingPeriodDTO from a dict
subscription_asking_period_dto_from_dict = SubscriptionAskingPeriodDTO.from_dict(subscription_asking_period_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


