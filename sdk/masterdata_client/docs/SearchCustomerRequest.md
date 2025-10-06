# SearchCustomerRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.search_customer_request import SearchCustomerRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SearchCustomerRequest from a JSON string
search_customer_request_instance = SearchCustomerRequest.from_json(json)
# print the JSON string representation of the object
print(SearchCustomerRequest.to_json())

# convert the object into a dict
search_customer_request_dict = search_customer_request_instance.to_dict()
# create an instance of SearchCustomerRequest from a dict
search_customer_request_from_dict = SearchCustomerRequest.from_dict(search_customer_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


