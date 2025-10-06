# AnnualStatementReference


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**annual_statement_id** | **str** |  | [optional] 
**annual_statement_number** | **str** |  | [optional] 
**year** | **int** |  | [optional] 
**version** | **int** |  | [optional] 
**status** | [**AnnualStatementStatus**](AnnualStatementStatus.md) |  | [optional] 

## Example

```python
from masterdata_client.models.annual_statement_reference import AnnualStatementReference

# TODO update the JSON string below
json = "{}"
# create an instance of AnnualStatementReference from a JSON string
annual_statement_reference_instance = AnnualStatementReference.from_json(json)
# print the JSON string representation of the object
print(AnnualStatementReference.to_json())

# convert the object into a dict
annual_statement_reference_dict = annual_statement_reference_instance.to_dict()
# create an instance of AnnualStatementReference from a dict
annual_statement_reference_from_dict = AnnualStatementReference.from_dict(annual_statement_reference_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


