# PagedBankingDataProvidersQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **List[str]** |  | [optional] 
**direction** | [**BankingDataProviderDirection**](BankingDataProviderDirection.md) |  | [optional] 
**bank_account_id** | **str** |  | [optional] 
**apply_to_new_bank_accounts** | **bool** |  | [optional] 
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**page_size** | **int** |  | [optional] 

## Example

```python
from configuration_client.models.paged_banking_data_providers_query_params import PagedBankingDataProvidersQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of PagedBankingDataProvidersQueryParams from a JSON string
paged_banking_data_providers_query_params_instance = PagedBankingDataProvidersQueryParams.from_json(json)
# print the JSON string representation of the object
print(PagedBankingDataProvidersQueryParams.to_json())

# convert the object into a dict
paged_banking_data_providers_query_params_dict = paged_banking_data_providers_query_params_instance.to_dict()
# create an instance of PagedBankingDataProvidersQueryParams from a dict
paged_banking_data_providers_query_params_from_dict = PagedBankingDataProvidersQueryParams.from_dict(paged_banking_data_providers_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


