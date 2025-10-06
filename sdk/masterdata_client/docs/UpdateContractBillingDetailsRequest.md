# UpdateContractBillingDetailsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_terms_id** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.update_contract_billing_details_request import UpdateContractBillingDetailsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateContractBillingDetailsRequest from a JSON string
update_contract_billing_details_request_instance = UpdateContractBillingDetailsRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateContractBillingDetailsRequest.to_json())

# convert the object into a dict
update_contract_billing_details_request_dict = update_contract_billing_details_request_instance.to_dict()
# create an instance of UpdateContractBillingDetailsRequest from a dict
update_contract_billing_details_request_from_dict = UpdateContractBillingDetailsRequest.from_dict(update_contract_billing_details_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


