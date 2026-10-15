# UpdateBankHolidayRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_date** | **date** |  | [optional] 
**name** | **str** |  | [optional] 
**is_active** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.update_bank_holiday_request import UpdateBankHolidayRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateBankHolidayRequest from a JSON string
update_bank_holiday_request_instance = UpdateBankHolidayRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateBankHolidayRequest.to_json())

# convert the object into a dict
update_bank_holiday_request_dict = update_bank_holiday_request_instance.to_dict()
# create an instance of UpdateBankHolidayRequest from a dict
update_bank_holiday_request_from_dict = UpdateBankHolidayRequest.from_dict(update_bank_holiday_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


