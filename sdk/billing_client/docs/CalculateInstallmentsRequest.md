# CalculateInstallmentsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_amount** | **float** |  |
**payment_frequency** | [**PaymentFrequency**](PaymentFrequency.md) |  |
**start_date** | **datetime** |  |
**amount_per_installment** | **float** |  | [optional]
**duration** | **int** |  | [optional]

## Example

```python
from billing_client.models.calculate_installments_request import CalculateInstallmentsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CalculateInstallmentsRequest from a JSON string
calculate_installments_request_instance = CalculateInstallmentsRequest.from_json(json)
# print the JSON string representation of the object
print(CalculateInstallmentsRequest.to_json())

# convert the object into a dict
calculate_installments_request_dict = calculate_installments_request_instance.to_dict()
# create an instance of CalculateInstallmentsRequest from a dict
calculate_installments_request_from_dict = CalculateInstallmentsRequest.from_dict(calculate_installments_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
