# CreateContractBillingPropertiesBaseRequestCreateContractBillingPropertiesCreditRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**invoice_frequency** | [**InvoiceFrequency**](InvoiceFrequency.md) |  | 
**advance_frequency** | [**AdvanceFrequency**](AdvanceFrequency.md) |  | 
**contractual_advance_amount** | **float** |  | 
**first_invoice_start_date_time** | **datetime** |  | [optional] 
**first_invoice_end_date_time** | **datetime** |  | [optional] 
**payment_terms_id** | **str** |  | [optional] 
**expect_advances_to_be_imported_periodically** | **bool** |  | [optional] 
**deviating_first_advance_start_date** | **datetime** |  | [optional] 
**advance_calculation_type** | [**AdvanceCalculationType**](AdvanceCalculationType.md) |  | [optional] 
**advance_period_percentages** | [**List[AdvancePeriodPercentage]**](AdvancePeriodPercentage.md) |  | [optional] 

## Example

```python
from masterdata_client.models.create_contract_billing_properties_base_request_create_contract_billing_properties_credit_request import CreateContractBillingPropertiesBaseRequestCreateContractBillingPropertiesCreditRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateContractBillingPropertiesBaseRequestCreateContractBillingPropertiesCreditRequest from a JSON string
create_contract_billing_properties_base_request_create_contract_billing_properties_credit_request_instance = CreateContractBillingPropertiesBaseRequestCreateContractBillingPropertiesCreditRequest.from_json(json)
# print the JSON string representation of the object
print(CreateContractBillingPropertiesBaseRequestCreateContractBillingPropertiesCreditRequest.to_json())

# convert the object into a dict
create_contract_billing_properties_base_request_create_contract_billing_properties_credit_request_dict = create_contract_billing_properties_base_request_create_contract_billing_properties_credit_request_instance.to_dict()
# create an instance of CreateContractBillingPropertiesBaseRequestCreateContractBillingPropertiesCreditRequest from a dict
create_contract_billing_properties_base_request_create_contract_billing_properties_credit_request_from_dict = CreateContractBillingPropertiesBaseRequestCreateContractBillingPropertiesCreditRequest.from_dict(create_contract_billing_properties_base_request_create_contract_billing_properties_credit_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


