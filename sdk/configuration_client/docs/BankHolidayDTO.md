# BankHolidayDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**title** | **str** |  | [optional] 
**var_date** | **date** |  | [optional] 
**production_day** | **int** |  | [optional] 
**is_active** | **bool** |  | [optional] 
**types** | [**List[BankHolidayType]**](BankHolidayType.md) |  | [optional] 
**counties** | **List[str]** |  | [optional] 

## Example

```python
from configuration_client.models.bank_holiday_dto import BankHolidayDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BankHolidayDTO from a JSON string
bank_holiday_dto_instance = BankHolidayDTO.from_json(json)
# print the JSON string representation of the object
print(BankHolidayDTO.to_json())

# convert the object into a dict
bank_holiday_dto_dict = bank_holiday_dto_instance.to_dict()
# create an instance of BankHolidayDTO from a dict
bank_holiday_dto_from_dict = BankHolidayDTO.from_dict(bank_holiday_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


