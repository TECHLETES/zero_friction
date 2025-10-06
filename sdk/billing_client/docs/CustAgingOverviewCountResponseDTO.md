# CustAgingOverviewCountResponseDTO

Represents an overview of customer aging counts and amounts.  This DTO provides aggregated financial information about outstanding transactions across different aging buckets.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**open_credits** | **float** | Total amount of open credit transactions. | [optional] 
**open_debits** | **float** | Sum of all open transactions to be paid by the customer | [optional] 
**total_open_not_overdue** | **float** | Open amount and not yet overdue | [optional] 
**total_overdue30_d** | **float** | Total amount of transactions overdue between 0 and 30 days (excluding end date). | [optional] 
**total_overdue60_d** | **float** | Total amount of transactions overdue between 30 and 60 days (excluding end date). | [optional] 
**total_overdue90_d** | **float** | Total amount of transactions overdue between 60 and 90 days (excluding end date). | [optional] 
**total_overdue_over90_d** | **float** | Total amount of transactions overdue for more than 90 days. | [optional] 
**total_collection_costs_open** | **float** | Total amount of open collection costs, including both open and potentially overdue costs. | [optional] 
**total_open** | **float** | Total amount of all open transactions. | [optional] 

## Example

```python
from billing_client.models.cust_aging_overview_count_response_dto import CustAgingOverviewCountResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustAgingOverviewCountResponseDTO from a JSON string
cust_aging_overview_count_response_dto_instance = CustAgingOverviewCountResponseDTO.from_json(json)
# print the JSON string representation of the object
print(CustAgingOverviewCountResponseDTO.to_json())

# convert the object into a dict
cust_aging_overview_count_response_dto_dict = cust_aging_overview_count_response_dto_instance.to_dict()
# create an instance of CustAgingOverviewCountResponseDTO from a dict
cust_aging_overview_count_response_dto_from_dict = CustAgingOverviewCountResponseDTO.from_dict(cust_aging_overview_count_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


