# CreateTaxCodeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**rates** | [**List[CreateTaxCodeRateRequest]**](CreateTaxCodeRateRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.create_tax_code_request import CreateTaxCodeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateTaxCodeRequest from a JSON string
create_tax_code_request_instance = CreateTaxCodeRequest.from_json(json)
# print the JSON string representation of the object
print(CreateTaxCodeRequest.to_json())

# convert the object into a dict
create_tax_code_request_dict = create_tax_code_request_instance.to_dict()
# create an instance of CreateTaxCodeRequest from a dict
create_tax_code_request_from_dict = CreateTaxCodeRequest.from_dict(create_tax_code_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


