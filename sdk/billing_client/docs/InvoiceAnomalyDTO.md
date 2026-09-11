# InvoiceAnomalyDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**severity** | **str** |  | [optional]
**description** | **str** |  | [optional]

## Example

```python
from billing_client.models.invoice_anomaly_dto import InvoiceAnomalyDTO

# TODO update the JSON string below
json = "{}"
# create an instance of InvoiceAnomalyDTO from a JSON string
invoice_anomaly_dto_instance = InvoiceAnomalyDTO.from_json(json)
# print the JSON string representation of the object
print(InvoiceAnomalyDTO.to_json())

# convert the object into a dict
invoice_anomaly_dto_dict = invoice_anomaly_dto_instance.to_dict()
# create an instance of InvoiceAnomalyDTO from a dict
invoice_anomaly_dto_from_dict = InvoiceAnomalyDTO.from_dict(invoice_anomaly_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
