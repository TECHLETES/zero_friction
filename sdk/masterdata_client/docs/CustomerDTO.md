# CustomerDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_number** | **str** |  | [optional] 
**salutation** | **str** |  | [optional] 
**initials** | **str** |  | [optional] 
**first_name** | **str** |  | [optional] 
**last_name** | **str** |  | [optional] 
**full_name** | **str** |  | [optional] 
**birth_date** | **datetime** |  | [optional] 
**ssin** | **str** |  | [optional] 
**ssin_country** | [**CountryCode**](CountryCode.md) |  | [optional] 
**short_display_name** | **str** |  | [optional] 
**customer_type** | [**CustomerType**](CustomerType.md) |  | [optional] 
**company_name** | **str** |  | [optional] 
**organization_number** | **str** |  | [optional] 
**vat_number** | **str** |  | [optional] 
**payment_terms_id** | **str** |  | [optional] 
**default_payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] 
**invoice_address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**bank_account_ibans** | [**List[BankAccountDTO]**](BankAccountDTO.md) |  | [optional] 
**contact_details** | [**List[ContactEntryDTO]**](ContactEntryDTO.md) |  | [optional] 
**contracts** | [**List[CustomerContractDTO]**](CustomerContractDTO.md) |  | [optional] 
**communication_preferences** | [**CustomerCommunicationPreferencesDTO**](CustomerCommunicationPreferencesDTO.md) |  | [optional] 
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) |  | [optional] 
**customer_group** | [**CustomerGroupReferenceDTO**](CustomerGroupReferenceDTO.md) |  | [optional] 
**billing_settings** | [**CustomerBillingSettingsDTO**](CustomerBillingSettingsDTO.md) |  | [optional] 
**custom_properties** | [**List[CustomEntityPropertyDTO]**](CustomEntityPropertyDTO.md) |  | [optional] 
**activation_code** | **str** |  | [optional] 
**portal_properties** | [**CustomerPortalPropertiesDTO**](CustomerPortalPropertiesDTO.md) |  | [optional] 
**generated_annual_statements** | [**List[AnnualStatementReference]**](AnnualStatementReference.md) |  | [optional] 
**blocked_for_deletion_reason** | [**CustomerBlockedForDeletionReason**](CustomerBlockedForDeletionReason.md) |  | [optional] 
**deleted** | **bool** |  | [optional] 
**service_number** | **str** |  | [optional] 
**preferred_peppol_scheme** | [**PeppolScheme**](PeppolScheme.md) |  | [optional] 
**custom_peppol_identifier** | **str** |  | [optional] 
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
from masterdata_client.models.customer_dto import CustomerDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerDTO from a JSON string
customer_dto_instance = CustomerDTO.from_json(json)
# print the JSON string representation of the object
print(CustomerDTO.to_json())

# convert the object into a dict
customer_dto_dict = customer_dto_instance.to_dict()
# create an instance of CustomerDTO from a dict
customer_dto_from_dict = CustomerDTO.from_dict(customer_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


