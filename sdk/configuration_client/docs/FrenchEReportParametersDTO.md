# FrenchEReportParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recommand_provider_account_id** | **str** |  | [optional] 
**default_b2_c_category_code** | [**FrenchEReportB2CCategoryCode**](FrenchEReportB2CCategoryCode.md) |  | [optional] 
**vat_regime** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.french_e_report_parameters_dto import FrenchEReportParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FrenchEReportParametersDTO from a JSON string
french_e_report_parameters_dto_instance = FrenchEReportParametersDTO.from_json(json)
# print the JSON string representation of the object
print(FrenchEReportParametersDTO.to_json())

# convert the object into a dict
french_e_report_parameters_dto_dict = french_e_report_parameters_dto_instance.to_dict()
# create an instance of FrenchEReportParametersDTO from a dict
french_e_report_parameters_dto_from_dict = FrenchEReportParametersDTO.from_dict(french_e_report_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


