# CustomerSummary


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **str** |  | [optional] 
**customer_account_num** | **str** |  | [optional] 
**short_display_name** | **str** |  | [optional] 

## Example

```python
from billing_client.models.customer_summary import CustomerSummary

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerSummary from a JSON string
customer_summary_instance = CustomerSummary.from_json(json)
# print the JSON string representation of the object
print(CustomerSummary.to_json())

# convert the object into a dict
customer_summary_dict = customer_summary_instance.to_dict()
# create an instance of CustomerSummary from a dict
customer_summary_from_dict = CustomerSummary.from_dict(customer_summary_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


