# BillingDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_method** | [**ContractBillingMethod**](ContractBillingMethod.md) |  | [optional] 
**invoice_frequency** | [**InvoiceFrequency**](InvoiceFrequency.md) |  | [optional] 
**advance_frequency** | [**AdvanceFrequency**](AdvanceFrequency.md) |  | [optional] 
**contractual_advance_amount** | **float** |  | [optional] 
**products** | [**List[ProductPeriodReferenceDTO]**](ProductPeriodReferenceDTO.md) |  | [optional] 
**invoice_address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**first_invoice_start_date_time** | **datetime** |  | [optional] 
**first_invoice_end_date_time** | **datetime** |  | [optional] 
**blocked** | **bool** |  | [optional] 

## Example

```python
from masterdata_client.models.billing_details_dto import BillingDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BillingDetailsDTO from a JSON string
billing_details_dto_instance = BillingDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(BillingDetailsDTO.to_json())

# convert the object into a dict
billing_details_dto_dict = billing_details_dto_instance.to_dict()
# create an instance of BillingDetailsDTO from a dict
billing_details_dto_from_dict = BillingDetailsDTO.from_dict(billing_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


