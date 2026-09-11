# UpdateContractBillingMethodRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_method** | [**ContractBillingMethod**](ContractBillingMethod.md) |  |
**effective_start_date** | **datetime** |  |

## Example

```python
from masterdata_client.models.update_contract_billing_method_request import UpdateContractBillingMethodRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateContractBillingMethodRequest from a JSON string
update_contract_billing_method_request_instance = UpdateContractBillingMethodRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateContractBillingMethodRequest.to_json())

# convert the object into a dict
update_contract_billing_method_request_dict = update_contract_billing_method_request_instance.to_dict()
# create an instance of UpdateContractBillingMethodRequest from a dict
update_contract_billing_method_request_from_dict = UpdateContractBillingMethodRequest.from_dict(update_contract_billing_method_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
