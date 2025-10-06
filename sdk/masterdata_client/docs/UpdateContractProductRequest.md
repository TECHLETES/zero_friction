# UpdateContractProductRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date** | **datetime** |  | [optional] 
**product_id** | **str** |  | [optional] 
**parameter** | [**UpdateContractProductParameter**](UpdateContractProductParameter.md) |  | [optional] 

## Example

```python
from masterdata_client.models.update_contract_product_request import UpdateContractProductRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateContractProductRequest from a JSON string
update_contract_product_request_instance = UpdateContractProductRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateContractProductRequest.to_json())

# convert the object into a dict
update_contract_product_request_dict = update_contract_product_request_instance.to_dict()
# create an instance of UpdateContractProductRequest from a dict
update_contract_product_request_from_dict = UpdateContractProductRequest.from_dict(update_contract_product_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


