# UpdateAdvancePeriodPercentagesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**advance_period_percentages** | [**List[AdvancePeriodPercentage]**](AdvancePeriodPercentage.md) |  |

## Example

```python
from billing_client.models.update_advance_period_percentages_request import UpdateAdvancePeriodPercentagesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateAdvancePeriodPercentagesRequest from a JSON string
update_advance_period_percentages_request_instance = UpdateAdvancePeriodPercentagesRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateAdvancePeriodPercentagesRequest.to_json())

# convert the object into a dict
update_advance_period_percentages_request_dict = update_advance_period_percentages_request_instance.to_dict()
# create an instance of UpdateAdvancePeriodPercentagesRequest from a dict
update_advance_period_percentages_request_from_dict = UpdateAdvancePeriodPercentagesRequest.from_dict(update_advance_period_percentages_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
