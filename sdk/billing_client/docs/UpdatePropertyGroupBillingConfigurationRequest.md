# UpdatePropertyGroupBillingConfigurationRequest

Represents a request to update a property group billing configuration.  This DTO is used to modify various billing settings for a property group, including frequencies, payment terms, and bank account details.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**property_group** | [**PropertyGroupReferenceDTO**](PropertyGroupReferenceDTO.md) | Reference to the property group being configured. | [optional] 
**company_bank_account_id** | **str** | The ID of the company bank account to be used for billing. | [optional] 
**advance_frequency** | [**AdvanceFrequency**](AdvanceFrequency.md) | The frequency at which advance payments will be collected. | [optional] 
**invoice_frequency** | [**InvoiceFrequency**](InvoiceFrequency.md) | The frequency at which invoices will be generated. | [optional] 
**invoice_day** | **int** | The day of the month when invoices should be generated. | [optional] 
**invoice_month** | **int** | The month when invoices should be generated (used for yearly frequency). | [optional] 
**product_id** | **str** | The ID of the product associated with this billing configuration. | [optional] 
**payment_terms_id** | **str** | The ID of the payment terms to be applied. | [optional] 

## Example

```python
from billing_client.models.update_property_group_billing_configuration_request import UpdatePropertyGroupBillingConfigurationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdatePropertyGroupBillingConfigurationRequest from a JSON string
update_property_group_billing_configuration_request_instance = UpdatePropertyGroupBillingConfigurationRequest.from_json(json)
# print the JSON string representation of the object
print(UpdatePropertyGroupBillingConfigurationRequest.to_json())

# convert the object into a dict
update_property_group_billing_configuration_request_dict = update_property_group_billing_configuration_request_instance.to_dict()
# create an instance of UpdatePropertyGroupBillingConfigurationRequest from a dict
update_property_group_billing_configuration_request_from_dict = UpdatePropertyGroupBillingConfigurationRequest.from_dict(update_property_group_billing_configuration_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


