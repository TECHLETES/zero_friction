# CreateTaxCodeRateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rate** | **float** |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 

## Example

```python
from configuration_client.models.create_tax_code_rate_request import CreateTaxCodeRateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateTaxCodeRateRequest from a JSON string
create_tax_code_rate_request_instance = CreateTaxCodeRateRequest.from_json(json)
# print the JSON string representation of the object
print(CreateTaxCodeRateRequest.to_json())

# convert the object into a dict
create_tax_code_rate_request_dict = create_tax_code_rate_request_instance.to_dict()
# create an instance of CreateTaxCodeRateRequest from a dict
create_tax_code_rate_request_from_dict = CreateTaxCodeRateRequest.from_dict(create_tax_code_rate_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


