# UpdateMoveRequestCustomerDetailsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_number** | **str** |  | [optional] 
**salutation** | **str** |  | [optional] 
**initials** | **str** |  | [optional] 
**first_name** | **str** |  | [optional] 
**last_name** | **str** |  | [optional] 
**birth_date** | **datetime** |  | [optional] 
**ssin** | **str** |  | [optional] 
**ssin_country** | [**CountryCode**](CountryCode.md) |  | [optional] 
**customer_type** | [**CustomerType**](CustomerType.md) |  | [optional] 
**company_name** | **str** |  | [optional] 
**organization_number** | **str** |  | [optional] 
**vat_number** | **str** |  | [optional] 
**default_payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] 
**invoice_address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**bank_account** | **str** |  | [optional] 
**email_address** | **str** |  | [optional] 
**telephone_number** | **str** |  | [optional] 
**mobile_telephone_number** | **str** |  | [optional] 
**website** | **str** |  | [optional] 
**culture** | **str** |  | [optional] 
**internal_id** | **str** |  | [optional] 
**customer_group_id** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.update_move_request_customer_details_request import UpdateMoveRequestCustomerDetailsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateMoveRequestCustomerDetailsRequest from a JSON string
update_move_request_customer_details_request_instance = UpdateMoveRequestCustomerDetailsRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateMoveRequestCustomerDetailsRequest.to_json())

# convert the object into a dict
update_move_request_customer_details_request_dict = update_move_request_customer_details_request_instance.to_dict()
# create an instance of UpdateMoveRequestCustomerDetailsRequest from a dict
update_move_request_customer_details_request_from_dict = UpdateMoveRequestCustomerDetailsRequest.from_dict(update_move_request_customer_details_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


