# CustomerDTO

Represents a customer entity with all associated information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Gets or sets the unique identifier. | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) | Gets or sets the type of the entity. | [optional] 
**created_date_time** | **datetime** | Gets or sets the date and time when the entity was created. | [optional] 
**discriminator** | **str** | Gets or sets the discriminator value. | [optional] 
**etag** | **str** | Gets or sets the ETag value. | [optional] 
**require_attention** | **bool** | Gets a value indicating whether the entity requires attention. | [optional] [readonly] 
**has_errors** | **bool** | Gets or sets a value indicating whether the entity has errors. | [optional] 
**has_warnings** | **bool** | Gets or sets a value indicating whether the entity has warnings. | [optional] 
**is_read_only** | **bool** | Gets or sets a value indicating whether the entity is read-only. | [optional] 
**organisation_id** | **str** | Gets or sets the organization identifier. | [optional] 
**account_number** | **str** | Unique account number assigned to the customer | [optional] 
**salutation** | **str** | Customer&#39;s salutation (e.g., Mr., Mrs., Dr.) | [optional] 
**initials** | **str** | Customer&#39;s initials | [optional] 
**first_name** | **str** | Customer&#39;s first name | [optional] 
**last_name** | **str** | Customer&#39;s last name | [optional] 
**birth_date** | **datetime** | Customer&#39;s date of birth | [optional] 
**ssin** | **str** | Social Security Identification Number | [optional] 
**ssin_country** | [**CountryCode**](CountryCode.md) | Country code associated with the SSIN | [optional] 
**short_display_name** | **str** | Short display name for the customer | [optional] 
**customer_type** | [**CustomerType**](CustomerType.md) | Type of customer (e.g., Individual, Business) | [optional] 
**company_name** | **str** | Company name for business customers | [optional] 
**organization_number** | **str** | Organization registration number | [optional] 
**vat_number** | **str** | Value Added Tax registration number | [optional] 
**payment_terms_id** | **str** | Identifier for payment terms | [optional] 
**default_payment_method** | [**PaymentMethod**](PaymentMethod.md) | Default payment method for the customer | [optional] 
**invoice_address** | [**AddressDTO**](AddressDTO.md) | Address for invoice delivery | [optional] 
**bank_account_ibans** | [**List[BankAccountDTO]**](BankAccountDTO.md) | List of bank account IBANs associated with the customer | [optional] 
**contact_details** | [**List[ContactEntryDTO]**](ContactEntryDTO.md) | Collection of contact details for the customer | [optional] 
**contracts** | [**List[CustomerContractDTO]**](CustomerContractDTO.md) | Collection of contracts associated with the customer | [optional] 
**communication_preferences** | [**CustomerCommunicationPreferencesDTO**](CustomerCommunicationPreferencesDTO.md) | Customer&#39;s communication preferences | [optional] 
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) | List of property groups associated with the customer | [optional] 
**customer_group** | [**CustomerGroupReferenceDTO**](CustomerGroupReferenceDTO.md) | Customer group reference | [optional] 
**billing_settings** | [**CustomerBillingSettingsDTO**](CustomerBillingSettingsDTO.md) | Customer&#39;s billing settings | [optional] 
**custom_properties** | [**List[CustomEntityPropertyDTO]**](CustomEntityPropertyDTO.md) | List of custom properties associated with the customer | [optional] 
**activation_code** | **str** | Activation code for customer portal access | [optional] 
**portal_properties** | [**CustomerPortalPropertiesDTO**](CustomerPortalPropertiesDTO.md) | Portal-specific properties for the customer | [optional] 
**generated_annual_statements** | [**List[AnnualStatementReference]**](AnnualStatementReference.md) | List of generated annual statements for the customer | [optional] 

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


