# CustomerAnnualStatementOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** |  | [optional] 
**latest_annual_statement_generation_in_progress** | **int** |  | [optional] 
**latest_annual_statement_generated** | **int** |  | [optional] 
**latest_annual_statement_failed** | **int** |  | [optional] 

## Example

```python
from masterdata_client.models.customer_annual_statement_overview_count_dto import CustomerAnnualStatementOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerAnnualStatementOverviewCountDTO from a JSON string
customer_annual_statement_overview_count_dto_instance = CustomerAnnualStatementOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(CustomerAnnualStatementOverviewCountDTO.to_json())

# convert the object into a dict
customer_annual_statement_overview_count_dto_dict = customer_annual_statement_overview_count_dto_instance.to_dict()
# create an instance of CustomerAnnualStatementOverviewCountDTO from a dict
customer_annual_statement_overview_count_dto_from_dict = CustomerAnnualStatementOverviewCountDTO.from_dict(customer_annual_statement_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


