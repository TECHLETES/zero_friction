# NumberFormatInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency_decimal_digits** | **int** |  | [optional] 
**currency_decimal_separator** | **str** |  | [optional] 
**is_read_only** | **bool** |  | [optional] [readonly] 
**currency_group_sizes** | **List[int]** |  | [optional] 
**number_group_sizes** | **List[int]** |  | [optional] 
**percent_group_sizes** | **List[int]** |  | [optional] 
**currency_group_separator** | **str** |  | [optional] 
**currency_symbol** | **str** |  | [optional] 
**na_n_symbol** | **str** |  | [optional] 
**currency_negative_pattern** | **int** |  | [optional] 
**number_negative_pattern** | **int** |  | [optional] 
**percent_positive_pattern** | **int** |  | [optional] 
**percent_negative_pattern** | **int** |  | [optional] 
**negative_infinity_symbol** | **str** |  | [optional] 
**negative_sign** | **str** |  | [optional] 
**number_decimal_digits** | **int** |  | [optional] 
**number_decimal_separator** | **str** |  | [optional] 
**number_group_separator** | **str** |  | [optional] 
**currency_positive_pattern** | **int** |  | [optional] 
**positive_infinity_symbol** | **str** |  | [optional] 
**positive_sign** | **str** |  | [optional] 
**percent_decimal_digits** | **int** |  | [optional] 
**percent_decimal_separator** | **str** |  | [optional] 
**percent_group_separator** | **str** |  | [optional] 
**percent_symbol** | **str** |  | [optional] 
**per_mille_symbol** | **str** |  | [optional] 
**native_digits** | **List[str]** |  | [optional] 
**digit_substitution** | [**DigitShapes**](DigitShapes.md) |  | [optional] 

## Example

```python
from billing_client.models.number_format_info import NumberFormatInfo

# TODO update the JSON string below
json = "{}"
# create an instance of NumberFormatInfo from a JSON string
number_format_info_instance = NumberFormatInfo.from_json(json)
# print the JSON string representation of the object
print(NumberFormatInfo.to_json())

# convert the object into a dict
number_format_info_dict = number_format_info_instance.to_dict()
# create an instance of NumberFormatInfo from a dict
number_format_info_from_dict = NumberFormatInfo.from_dict(number_format_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


