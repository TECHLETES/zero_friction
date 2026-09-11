# InstallmentInfoDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**installment_number** | **int** |  | [optional]
**amount** | **float** |  | [optional]
**due_date** | **datetime** |  | [optional]
**is_last_installment** | **bool** |  | [optional]

## Example

```python
from billing_client.models.installment_info_dto import InstallmentInfoDTO

# TODO update the JSON string below
json = "{}"
# create an instance of InstallmentInfoDTO from a JSON string
installment_info_dto_instance = InstallmentInfoDTO.from_json(json)
# print the JSON string representation of the object
print(InstallmentInfoDTO.to_json())

# convert the object into a dict
installment_info_dto_dict = installment_info_dto_instance.to_dict()
# create an instance of InstallmentInfoDTO from a dict
installment_info_dto_from_dict = InstallmentInfoDTO.from_dict(installment_info_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
