# CreateContractBillingPropertiesBaseRequestCreateContractBillingPropertiesPrepaymentRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**statement_frequency** | [**InvoiceFrequency**](InvoiceFrequency.md) |  |
**back_charge_end_date_time** | **datetime** |  | [optional]
**gift_amount** | **float** |  | [optional]

## Example

```python
from masterdata_client.models.create_contract_billing_properties_base_request_create_contract_billing_properties_prepayment_request import CreateContractBillingPropertiesBaseRequestCreateContractBillingPropertiesPrepaymentRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateContractBillingPropertiesBaseRequestCreateContractBillingPropertiesPrepaymentRequest from a JSON string
create_contract_billing_properties_base_request_create_contract_billing_properties_prepayment_request_instance = CreateContractBillingPropertiesBaseRequestCreateContractBillingPropertiesPrepaymentRequest.from_json(json)
# print the JSON string representation of the object
print(CreateContractBillingPropertiesBaseRequestCreateContractBillingPropertiesPrepaymentRequest.to_json())

# convert the object into a dict
create_contract_billing_properties_base_request_create_contract_billing_properties_prepayment_request_dict = create_contract_billing_properties_base_request_create_contract_billing_properties_prepayment_request_instance.to_dict()
# create an instance of CreateContractBillingPropertiesBaseRequestCreateContractBillingPropertiesPrepaymentRequest from a dict
create_contract_billing_properties_base_request_create_contract_billing_properties_prepayment_request_from_dict = CreateContractBillingPropertiesBaseRequestCreateContractBillingPropertiesPrepaymentRequest.from_dict(create_contract_billing_properties_base_request_create_contract_billing_properties_prepayment_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
