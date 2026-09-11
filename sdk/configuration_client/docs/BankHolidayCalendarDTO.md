# BankHolidayCalendarDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**country_code** | [**CountryCode**](CountryCode.md) |  | [optional]
**bank_holidays** | [**List[BankHolidayDTO]**](BankHolidayDTO.md) |  | [optional]
**exclude_by_name** | **bool** |  | [optional]
**excluded_names** | **List[str]** |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.bank_holiday_calendar_dto import BankHolidayCalendarDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BankHolidayCalendarDTO from a JSON string
bank_holiday_calendar_dto_instance = BankHolidayCalendarDTO.from_json(json)
# print the JSON string representation of the object
print(BankHolidayCalendarDTO.to_json())

# convert the object into a dict
bank_holiday_calendar_dto_dict = bank_holiday_calendar_dto_instance.to_dict()
# create an instance of BankHolidayCalendarDTO from a dict
bank_holiday_calendar_dto_from_dict = BankHolidayCalendarDTO.from_dict(bank_holiday_calendar_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
