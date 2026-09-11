# SubscriptionReceivingPeriodDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **datetime** |  | [optional]
**end_date_time** | **datetime** |  | [optional]
**receiving_period_type** | **int** |  | [optional]

## Example

```python
from billing_client.models.subscription_receiving_period_dto import SubscriptionReceivingPeriodDTO

# TODO update the JSON string below
json = "{}"
# create an instance of SubscriptionReceivingPeriodDTO from a JSON string
subscription_receiving_period_dto_instance = SubscriptionReceivingPeriodDTO.from_json(json)
# print the JSON string representation of the object
print(SubscriptionReceivingPeriodDTO.to_json())

# convert the object into a dict
subscription_receiving_period_dto_dict = subscription_receiving_period_dto_instance.to_dict()
# create an instance of SubscriptionReceivingPeriodDTO from a dict
subscription_receiving_period_dto_from_dict = SubscriptionReceivingPeriodDTO.from_dict(subscription_receiving_period_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
