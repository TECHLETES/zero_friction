# ActivateAccountingRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**activation_date** | **date** |  | 

## Example

```python
from configuration_client.models.activate_accounting_request import ActivateAccountingRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ActivateAccountingRequest from a JSON string
activate_accounting_request_instance = ActivateAccountingRequest.from_json(json)
# print the JSON string representation of the object
print(ActivateAccountingRequest.to_json())

# convert the object into a dict
activate_accounting_request_dict = activate_accounting_request_instance.to_dict()
# create an instance of ActivateAccountingRequest from a dict
activate_accounting_request_from_dict = ActivateAccountingRequest.from_dict(activate_accounting_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


