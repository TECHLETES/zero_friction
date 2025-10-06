# UpdatePrepaymentParametersRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**emergency_credit** | **float** |  | [optional] 
**enable_deduction** | **bool** |  | [optional] 
**deduction_rate** | **float** |  | [optional] 

## Example

```python
from configuration_client.models.update_prepayment_parameters_request import UpdatePrepaymentParametersRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdatePrepaymentParametersRequest from a JSON string
update_prepayment_parameters_request_instance = UpdatePrepaymentParametersRequest.from_json(json)
# print the JSON string representation of the object
print(UpdatePrepaymentParametersRequest.to_json())

# convert the object into a dict
update_prepayment_parameters_request_dict = update_prepayment_parameters_request_instance.to_dict()
# create an instance of UpdatePrepaymentParametersRequest from a dict
update_prepayment_parameters_request_from_dict = UpdatePrepaymentParametersRequest.from_dict(update_prepayment_parameters_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


