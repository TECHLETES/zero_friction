# CreatePropertyGroupBillingConfigurationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**company_bank_account_id** | **str** |  | [optional] 
**advance_frequency** | [**AdvanceFrequency**](AdvanceFrequency.md) |  | [optional] 
**invoice_frequency** | [**InvoiceFrequency**](InvoiceFrequency.md) |  | [optional] 
**invoice_day** | **int** |  | [optional] 
**invoice_month** | **int** |  | [optional] 
**product_id** | **str** |  | [optional] 
**payment_terms_id** | **str** |  | [optional] 
**time_of_use_calendar_ids** | **Dict[str, str]** |  | [optional] 

## Example

```python
from masterdata_client.models.create_property_group_billing_configuration_request import CreatePropertyGroupBillingConfigurationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreatePropertyGroupBillingConfigurationRequest from a JSON string
create_property_group_billing_configuration_request_instance = CreatePropertyGroupBillingConfigurationRequest.from_json(json)
# print the JSON string representation of the object
print(CreatePropertyGroupBillingConfigurationRequest.to_json())

# convert the object into a dict
create_property_group_billing_configuration_request_dict = create_property_group_billing_configuration_request_instance.to_dict()
# create an instance of CreatePropertyGroupBillingConfigurationRequest from a dict
create_property_group_billing_configuration_request_from_dict = CreatePropertyGroupBillingConfigurationRequest.from_dict(create_property_group_billing_configuration_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


