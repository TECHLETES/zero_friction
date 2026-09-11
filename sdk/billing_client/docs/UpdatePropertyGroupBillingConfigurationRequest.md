# UpdatePropertyGroupBillingConfigurationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**property_group** | [**PropertyGroupReferenceDTO**](PropertyGroupReferenceDTO.md) |  |
**company_bank_account_id** | **str** |  | [optional]
**advance_frequency** | [**AdvanceFrequency**](AdvanceFrequency.md) |  | [optional]
**invoice_frequency** | [**InvoiceFrequency**](InvoiceFrequency.md) |  | [optional]
**invoice_day** | **int** |  | [optional]
**invoice_month** | **int** |  | [optional]
**product_id** | **str** |  | [optional]
**payment_terms_id** | **str** |  | [optional]
**default_billing_method** | [**ContractBillingMethod**](ContractBillingMethod.md) |  | [optional]

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
