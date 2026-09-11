# CustAgingOverviewCountResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**open_credits** | **float** |  | [optional] 
**open_debits** | **float** |  | [optional] 
**total_open_not_overdue** | **float** |  | [optional] 
**total_overdue30_d** | **float** |  | [optional] 
**total_overdue60_d** | **float** |  | [optional] 
**total_overdue90_d** | **float** |  | [optional] 
**total_overdue_over90_d** | **float** |  | [optional] 
**total_collection_costs_open** | **float** |  | [optional] 
**total_open** | **float** |  | [optional] 

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


