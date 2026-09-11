# InvoiceValidationResultDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**validated_at** | **datetime** |  | [optional]
**score** | **int** |  | [optional]
**reasoning** | **str** |  | [optional]
**anomalies** | [**List[InvoiceAnomalyDTO]**](InvoiceAnomalyDTO.md) |  | [optional]
**model_version** | **str** |  | [optional]
**token_count** | **int** |  | [optional]

## Example

```python
from billing_client.models.invoice_validation_result_dto import InvoiceValidationResultDTO

# TODO update the JSON string below
json = "{}"
# create an instance of InvoiceValidationResultDTO from a JSON string
invoice_validation_result_dto_instance = InvoiceValidationResultDTO.from_json(json)
# print the JSON string representation of the object
print(InvoiceValidationResultDTO.to_json())

# convert the object into a dict
invoice_validation_result_dto_dict = invoice_validation_result_dto_instance.to_dict()
# create an instance of InvoiceValidationResultDTO from a dict
invoice_validation_result_dto_from_dict = InvoiceValidationResultDTO.from_dict(invoice_validation_result_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
