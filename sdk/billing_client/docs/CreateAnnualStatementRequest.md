# CreateAnnualStatementRequest

Represents a request to create an annual statement.  This DTO is used to generate an annual statement for a specific year.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**year** | **int** | The year for which the annual statement should be generated. | [optional] 

## Example

```python
from billing_client.models.create_annual_statement_request import CreateAnnualStatementRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateAnnualStatementRequest from a JSON string
create_annual_statement_request_instance = CreateAnnualStatementRequest.from_json(json)
# print the JSON string representation of the object
print(CreateAnnualStatementRequest.to_json())

# convert the object into a dict
create_annual_statement_request_dict = create_annual_statement_request_instance.to_dict()
# create an instance of CreateAnnualStatementRequest from a dict
create_annual_statement_request_from_dict = CreateAnnualStatementRequest.from_dict(create_annual_statement_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


