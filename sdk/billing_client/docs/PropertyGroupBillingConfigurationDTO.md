# PropertyGroupBillingConfigurationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**property_group** | [**PropertyGroupReferenceDTO**](PropertyGroupReferenceDTO.md) |  | [optional]
**company_bank_account_id** | **str** |  | [optional]
**advance_frequency** | [**AdvanceFrequency**](AdvanceFrequency.md) |  | [optional]
**invoice_frequency** | [**InvoiceFrequency**](InvoiceFrequency.md) |  | [optional]
**invoice_day** | **int** |  | [optional]
**invoice_month** | **int** |  | [optional]
**product_id** | **str** |  | [optional]
**payment_terms_id** | **str** |  | [optional]
**time_of_use_calendar_ids** | **Dict[str, str]** |  | [optional]
**default_billing_method** | [**ContractBillingMethod**](ContractBillingMethod.md) |  | [optional]
**note_to_customer** | **str** |  | [optional]
**localisation_level** | [**LocalisationLevel**](LocalisationLevel.md) |  | [optional]
**localised_fields** | **List[str]** |  | [optional]
**translated_fields** | **Dict[str, Dict[str, str]]** |  | [optional]
**organisation_id** | **str** |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

## Example

```python
from billing_client.models.property_group_billing_configuration_dto import PropertyGroupBillingConfigurationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PropertyGroupBillingConfigurationDTO from a JSON string
property_group_billing_configuration_dto_instance = PropertyGroupBillingConfigurationDTO.from_json(json)
# print the JSON string representation of the object
print(PropertyGroupBillingConfigurationDTO.to_json())

# convert the object into a dict
property_group_billing_configuration_dto_dict = property_group_billing_configuration_dto_instance.to_dict()
# create an instance of PropertyGroupBillingConfigurationDTO from a dict
property_group_billing_configuration_dto_from_dict = PropertyGroupBillingConfigurationDTO.from_dict(property_group_billing_configuration_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
