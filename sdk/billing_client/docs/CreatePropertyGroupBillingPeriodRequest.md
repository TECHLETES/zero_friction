# CreatePropertyGroupBillingPeriodRequest

Represents a request to create a new billing period for a property group.  This DTO is used to define the time period for which billing calculations will be performed.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **datetime** | The start date and time of the billing period. | [optional] 
**end_date_time** | **datetime** | The end date and time of the billing period. | [optional] 

## Example

```python
from billing_client.models.create_property_group_billing_period_request import CreatePropertyGroupBillingPeriodRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreatePropertyGroupBillingPeriodRequest from a JSON string
create_property_group_billing_period_request_instance = CreatePropertyGroupBillingPeriodRequest.from_json(json)
# print the JSON string representation of the object
print(CreatePropertyGroupBillingPeriodRequest.to_json())

# convert the object into a dict
create_property_group_billing_period_request_dict = create_property_group_billing_period_request_instance.to_dict()
# create an instance of CreatePropertyGroupBillingPeriodRequest from a dict
create_property_group_billing_period_request_from_dict = CreatePropertyGroupBillingPeriodRequest.from_dict(create_property_group_billing_period_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


