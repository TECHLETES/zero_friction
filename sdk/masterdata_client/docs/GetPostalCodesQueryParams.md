# GetPostalCodesQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**postal_code** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.get_postal_codes_query_params import GetPostalCodesQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetPostalCodesQueryParams from a JSON string
get_postal_codes_query_params_instance = GetPostalCodesQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetPostalCodesQueryParams.to_json())

# convert the object into a dict
get_postal_codes_query_params_dict = get_postal_codes_query_params_instance.to_dict()
# create an instance of GetPostalCodesQueryParams from a dict
get_postal_codes_query_params_from_dict = GetPostalCodesQueryParams.from_dict(get_postal_codes_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


