# UpdateBankHolidaysRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exclude_by_name** | **bool** |  | [optional]
**excluded_names** | **List[str]** |  | [optional]
**holidays** | [**List[UpdateBankHolidayRequest]**](UpdateBankHolidayRequest.md) |  |

## Example

```python
from configuration_client.models.update_bank_holidays_request import UpdateBankHolidaysRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateBankHolidaysRequest from a JSON string
update_bank_holidays_request_instance = UpdateBankHolidaysRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateBankHolidaysRequest.to_json())

# convert the object into a dict
update_bank_holidays_request_dict = update_bank_holidays_request_instance.to_dict()
# create an instance of UpdateBankHolidaysRequest from a dict
update_bank_holidays_request_from_dict = UpdateBankHolidaysRequest.from_dict(update_bank_holidays_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
