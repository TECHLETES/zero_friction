# BulkCreateAnnualStatementRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**year** | **int** | The year for which the annual statement should be generated. | [optional] 
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetCustomersQueryParams**](GetCustomersQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 
**only_where_latest_not_generated** | **bool** |  | [optional] 

## Example

```python
from masterdata_client.models.bulk_create_annual_statement_request import BulkCreateAnnualStatementRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkCreateAnnualStatementRequest from a JSON string
bulk_create_annual_statement_request_instance = BulkCreateAnnualStatementRequest.from_json(json)
# print the JSON string representation of the object
print(BulkCreateAnnualStatementRequest.to_json())

# convert the object into a dict
bulk_create_annual_statement_request_dict = bulk_create_annual_statement_request_instance.to_dict()
# create an instance of BulkCreateAnnualStatementRequest from a dict
bulk_create_annual_statement_request_from_dict = BulkCreateAnnualStatementRequest.from_dict(bulk_create_annual_statement_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


