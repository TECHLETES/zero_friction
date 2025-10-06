# CreateFinancialPeriodRequest

Request model for creating a new financial period.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date** | **datetime** | Start date of the period. | [optional] 
**end_date** | **datetime** | End date of the period. | [optional] 
**period** | **int** | Number of the financial period. | [optional] 
**year** | **int** | Year of the financial period. | [optional] 
**metadata** | [**ExternalAccountingMetadataRequest**](ExternalAccountingMetadataRequest.md) | Metadata to track back the origin of the data.  This is required so that we can push the data back to the source accounting system. | [optional] 

## Example

```python
from configuration_client.models.create_financial_period_request import CreateFinancialPeriodRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateFinancialPeriodRequest from a JSON string
create_financial_period_request_instance = CreateFinancialPeriodRequest.from_json(json)
# print the JSON string representation of the object
print(CreateFinancialPeriodRequest.to_json())

# convert the object into a dict
create_financial_period_request_dict = create_financial_period_request_instance.to_dict()
# create an instance of CreateFinancialPeriodRequest from a dict
create_financial_period_request_from_dict = CreateFinancialPeriodRequest.from_dict(create_financial_period_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


