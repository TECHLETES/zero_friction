# FrenchEReportInvoiceCandidateDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_id** | **str** |  | [optional] 
**invoice_number** | **str** |  | [optional] 
**classification** | [**FrenchEReportClassification**](FrenchEReportClassification.md) |  | [optional] 
**reporting_date** | **date** |  | [optional] 
**category_code** | **str** |  | [optional] 
**currency** | **str** |  | [optional] 
**amount_ex_vat** | **float** |  | [optional] 
**vat_amount** | **float** |  | [optional] 
**amount_inc_vat** | **float** |  | [optional] 
**vat_breakdown** | [**List[FrenchEReportVatBreakdownLineDTO]**](FrenchEReportVatBreakdownLineDTO.md) |  | [optional] 
**buyer_country** | [**CountryCode**](CountryCode.md) |  | [optional] 
**customer_type** | [**CustomerType**](CustomerType.md) |  | [optional] 
**status** | [**FrenchEReportCandidateStatus**](FrenchEReportCandidateStatus.md) |  | [optional] 
**submission_id** | **str** |  | [optional] 
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
from regionalregulations_client.models.french_e_report_invoice_candidate_dto import FrenchEReportInvoiceCandidateDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FrenchEReportInvoiceCandidateDTO from a JSON string
french_e_report_invoice_candidate_dto_instance = FrenchEReportInvoiceCandidateDTO.from_json(json)
# print the JSON string representation of the object
print(FrenchEReportInvoiceCandidateDTO.to_json())

# convert the object into a dict
french_e_report_invoice_candidate_dto_dict = french_e_report_invoice_candidate_dto_instance.to_dict()
# create an instance of FrenchEReportInvoiceCandidateDTO from a dict
french_e_report_invoice_candidate_dto_from_dict = FrenchEReportInvoiceCandidateDTO.from_dict(french_e_report_invoice_candidate_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


