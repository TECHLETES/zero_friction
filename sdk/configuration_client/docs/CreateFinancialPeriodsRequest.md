# CreateFinancialPeriodsRequest

Request model for creating financial periods.  Financial periods should correspond to entries in an external accounting system  to enable proper data synchronization during billing operations.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**financial_periods** | [**List[CreateFinancialPeriodRequest]**](CreateFinancialPeriodRequest.md) | List of financial periods to create. | [optional] 

## Example

```python
from configuration_client.models.create_financial_periods_request import CreateFinancialPeriodsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateFinancialPeriodsRequest from a JSON string
create_financial_periods_request_instance = CreateFinancialPeriodsRequest.from_json(json)
# print the JSON string representation of the object
print(CreateFinancialPeriodsRequest.to_json())

# convert the object into a dict
create_financial_periods_request_dict = create_financial_periods_request_instance.to_dict()
# create an instance of CreateFinancialPeriodsRequest from a dict
create_financial_periods_request_from_dict = CreateFinancialPeriodsRequest.from_dict(create_financial_periods_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


