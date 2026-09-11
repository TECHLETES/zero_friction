# CalculateInstallmentsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number_of_installments** | **int** |  | [optional] 
**amount_per_installment** | **float** |  | [optional] 
**final_installment_amount** | **float** |  | [optional] 
**end_date** | **datetime** |  | [optional] 
**installments** | [**List[InstallmentInfoDTO]**](InstallmentInfoDTO.md) |  | [optional] 
**total_amount** | **float** |  | [optional] 
**calculated_total** | **float** |  | [optional] 

## Example

```python
from billing_client.models.calculate_installments_response import CalculateInstallmentsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CalculateInstallmentsResponse from a JSON string
calculate_installments_response_instance = CalculateInstallmentsResponse.from_json(json)
# print the JSON string representation of the object
print(CalculateInstallmentsResponse.to_json())

# convert the object into a dict
calculate_installments_response_dict = calculate_installments_response_instance.to_dict()
# create an instance of CalculateInstallmentsResponse from a dict
calculate_installments_response_from_dict = CalculateInstallmentsResponse.from_dict(calculate_installments_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


