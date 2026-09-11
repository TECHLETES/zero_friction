# CreateCustomerRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_num** | **str** |  | [optional]
**salutation** | **str** |  |
**initials** | **str** |  |
**first_name** | **str** |  |
**last_name** | **str** |  |
**birth_date** | **datetime** |  | [optional]
**ssin** | **str** |  |
**ssin_country** | [**CountryCode**](CountryCode.md) |  |
**customer_type** | [**CustomerType**](CustomerType.md) |  |
**company_name** | **str** |  |
**vat_number** | **str** |  | [optional]
**organization_number** | **str** |  |
**payment_terms_id** | **str** |  | [optional]
**default_payment_method** | [**PaymentMethod**](PaymentMethod.md) |  |
**customer_group_id** | **str** |  | [optional]
**invoice_address** | [**AddressDTO**](AddressDTO.md) |  |
**bank_accounts** | [**List[BankAccountRequest]**](BankAccountRequest.md) |  |
**contact_details** | [**List[ContactEntryRequest]**](ContactEntryRequest.md) |  | [optional]
**communication_preferences** | [**CustomerCommunicationPreferencesRequest**](CustomerCommunicationPreferencesRequest.md) |  |
**service_number** | **str** |  | [optional]

## Example

```python
from masterdata_client.models.create_customer_request import CreateCustomerRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateCustomerRequest from a JSON string
create_customer_request_instance = CreateCustomerRequest.from_json(json)
# print the JSON string representation of the object
print(CreateCustomerRequest.to_json())

# convert the object into a dict
create_customer_request_dict = create_customer_request_instance.to_dict()
# create an instance of CreateCustomerRequest from a dict
create_customer_request_from_dict = CreateCustomerRequest.from_dict(create_customer_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
