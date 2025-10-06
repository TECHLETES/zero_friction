# BillingRelationDTO

Represents a billing relation between a customer and their billing configuration.  This DTO contains all the necessary information about how a customer should be billed,  including payment terms, advance details, invoice details, and contract information.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | The unique identifier of the billing relation. | [optional] 
**debtor** | [**DebtorDTO**](DebtorDTO.md) | Information about the debtor associated with this billing relation. | [optional] 
**payment_terms_id** | **str** | The unique identifier of the payment terms. | [optional] 
**payment_method** | [**PaymentMethod**](PaymentMethod.md) | The payment method to be used for this billing relation. | [optional] 
**advance_details** | [**AdvanceDetailsDTO**](AdvanceDetailsDTO.md) | Details about advance payments for this billing relation. | [optional] 
**invoice_details** | [**InvoiceDetailsDTO**](InvoiceDetailsDTO.md) | Details about invoice generation for this billing relation. | [optional] 
**contract** | [**BillingContractDTO**](BillingContractDTO.md) | Information about the contract associated with this billing relation. | [optional] 
**contract_start_date_time** | **datetime** | The start date and time of the contract. | [optional] 
**contract_end_date_time** | **datetime** | The end date and time of the contract. | [optional] 
**block_details** | [**BlockDetailsDTO**](BlockDetailsDTO.md) | Details about any blocking status for this billing relation. | [optional] 
**expect_advances_to_be_imported_periodically** | **bool** | Indicates whether advances are expected to be imported periodically. | [optional] 
**time_zone** | **str** | The time zone for this billing relation. | [optional] 

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


