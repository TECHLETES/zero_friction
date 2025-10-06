# BillingCustomerDTO

Represents a billing customer with their associated settings and information.  This DTO contains all the necessary information about a customer's billing configuration,  including payment terms, property groups, and billing settings.

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
**account_number** | **str** | The unique account number assigned to the customer. | [optional] 
**short_display_name** | **str** | A shortened display name for the customer. | [optional] 
**payment_terms_id** | **str** | The unique identifier of the payment terms associated with the customer. | [optional] 
**default_payment_method** | [**PaymentMethod**](PaymentMethod.md) | The default payment method for the customer. | [optional] 
**customer_type** | [**CustomerType**](CustomerType.md) | The type of customer. | [optional] 
**customer_group** | [**CustomerGroupReferenceDTO**](CustomerGroupReferenceDTO.md) | Reference to the customer group this customer belongs to. | [optional] 
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) | List of property groups associated with this customer. | [optional] 
**culture** | [**CultureInfo**](CultureInfo.md) | The culture settings for the customer. | [optional] 
**collection_flow_id** | **str** | The unique identifier of the collection flow associated with the customer. | [optional] 
**billing_settings** | [**CustomerBillingSettingsDTO**](CustomerBillingSettingsDTO.md) | The billing settings specific to this customer. | [optional] 
**organization_number** | **str** | The organization number of the customer. | [optional] 
**vat_number** | **str** | The VAT number of the customer. | [optional] 

## Example

```python
from billing_client.models.billing_customer_dto import BillingCustomerDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BillingCustomerDTO from a JSON string
billing_customer_dto_instance = BillingCustomerDTO.from_json(json)
# print the JSON string representation of the object
print(BillingCustomerDTO.to_json())

# convert the object into a dict
billing_customer_dto_dict = billing_customer_dto_instance.to_dict()
# create an instance of BillingCustomerDTO from a dict
billing_customer_dto_from_dict = BillingCustomerDTO.from_dict(billing_customer_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


