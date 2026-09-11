# BillingCustomerDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_number** | **str** |  | [optional] 
**short_display_name** | **str** |  | [optional] 
**payment_terms_id** | **str** |  | [optional] 
**default_payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] 
**customer_type** | [**CustomerType**](CustomerType.md) |  | [optional] 
**customer_group** | [**CustomerGroupReferenceDTO**](CustomerGroupReferenceDTO.md) |  | [optional] 
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) |  | [optional] 
**culture** | **str** | Culture identifier (e.g., &#39;en-US&#39;, &#39;nl-NL&#39;) | [optional] 
**collection_flow_id** | **str** |  | [optional] 
**billing_settings** | [**CustomerBillingSettingsDTO**](CustomerBillingSettingsDTO.md) |  | [optional] 
**organization_number** | **str** |  | [optional] 
**vat_number** | **str** |  | [optional] 
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


