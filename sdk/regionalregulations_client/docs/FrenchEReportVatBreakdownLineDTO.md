# FrenchEReportVatBreakdownLineDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vat_rate** | **float** |  | [optional] 
**amount_ex_vat** | **float** |  | [optional] 
**vat_amount** | **float** |  | [optional] 

## Example

```python
from regionalregulations_client.models.french_e_report_vat_breakdown_line_dto import FrenchEReportVatBreakdownLineDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FrenchEReportVatBreakdownLineDTO from a JSON string
french_e_report_vat_breakdown_line_dto_instance = FrenchEReportVatBreakdownLineDTO.from_json(json)
# print the JSON string representation of the object
print(FrenchEReportVatBreakdownLineDTO.to_json())

# convert the object into a dict
french_e_report_vat_breakdown_line_dto_dict = french_e_report_vat_breakdown_line_dto_instance.to_dict()
# create an instance of FrenchEReportVatBreakdownLineDTO from a dict
french_e_report_vat_breakdown_line_dto_from_dict = FrenchEReportVatBreakdownLineDTO.from_dict(french_e_report_vat_breakdown_line_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


