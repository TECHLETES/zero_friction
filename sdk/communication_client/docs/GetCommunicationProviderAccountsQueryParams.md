# GetCommunicationProviderAccountsQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **List[str]** |  | [optional] 
**provider_type** | **List[str]** |  | [optional] 
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**page_size** | **int** |  | [optional] 

## Example

```python
from communication_client.models.get_communication_provider_accounts_query_params import GetCommunicationProviderAccountsQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetCommunicationProviderAccountsQueryParams from a JSON string
get_communication_provider_accounts_query_params_instance = GetCommunicationProviderAccountsQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetCommunicationProviderAccountsQueryParams.to_json())

# convert the object into a dict
get_communication_provider_accounts_query_params_dict = get_communication_provider_accounts_query_params_instance.to_dict()
# create an instance of GetCommunicationProviderAccountsQueryParams from a dict
get_communication_provider_accounts_query_params_from_dict = GetCommunicationProviderAccountsQueryParams.from_dict(get_communication_provider_accounts_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


