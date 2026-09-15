# BillingRelationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**debtor** | [**DebtorDTO**](DebtorDTO.md) |  | [optional] 
**payment_terms_id** | **str** |  | [optional] 
**payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] 
**advance_details** | [**AdvanceDetailsDTO**](AdvanceDetailsDTO.md) |  | [optional] 
**invoice_details** | [**InvoiceDetailsDTO**](InvoiceDetailsDTO.md) |  | [optional] 
**contract** | [**BillingContractDTO**](BillingContractDTO.md) |  | [optional] 
**contract_start_date_time** | **datetime** |  | [optional] 
**contract_end_date_time** | **datetime** |  | [optional] 
**block_details** | [**BlockDetailsDTO**](BlockDetailsDTO.md) |  | [optional] 
**expect_advances_to_be_imported_periodically** | **bool** |  | [optional] 
**time_zone** | **str** |  | [optional] 

## Example

```python
from billing_client.models.billing_relation_dto import BillingRelationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BillingRelationDTO from a JSON string
billing_relation_dto_instance = BillingRelationDTO.from_json(json)
# print the JSON string representation of the object
print(BillingRelationDTO.to_json())

# convert the object into a dict
billing_relation_dto_dict = billing_relation_dto_instance.to_dict()
# create an instance of BillingRelationDTO from a dict
billing_relation_dto_from_dict = BillingRelationDTO.from_dict(billing_relation_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


