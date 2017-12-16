# \DefaultApi

All URIs are relative to *https://app.sysdigcloud.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateAlert**](DefaultApi.md#CreateAlert) | **Post** /alerts | 
[**DeleteAlert**](DefaultApi.md#DeleteAlert) | **Delete** /alerts/{id} | 
[**GetAlert**](DefaultApi.md#GetAlert) | **Get** /alerts/{id} | 
[**GetAlerts**](DefaultApi.md#GetAlerts) | **Get** /alerts | 
[**QueryData**](DefaultApi.md#QueryData) | **Post** /data | 
[**QueryDataBatch**](DefaultApi.md#QueryDataBatch) | **Post** /data/batch | 
[**UpdateAlert**](DefaultApi.md#UpdateAlert) | **Put** /alerts/{id} | 


# **CreateAlert**
> AlertInput CreateAlert(ctx, alertInput)


Creates a new Alert

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **alertInput** | [**AlertInput**](AlertInput.md)| AlterInput | 

### Return type

[**AlertInput**](AlertInput.md)

### Authorization

[bearerHeader](../README.md#bearerHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DeleteAlert**
> DeleteAlert(ctx, id)


Delete an Alert

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **id** | **int64**| ID of alert | 

### Return type

 (empty response body)

### Authorization

[bearerHeader](../README.md#bearerHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetAlert**
> AlertInput GetAlert(ctx, id)


Get an Alert

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **id** | **int64**| ID of alert | 

### Return type

[**AlertInput**](AlertInput.md)

### Authorization

[bearerHeader](../README.md#bearerHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetAlerts**
> Alerts GetAlerts(ctx, )


Gets Alerts

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**Alerts**](Alerts.md)

### Authorization

[bearerHeader](../README.md#bearerHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **QueryData**
> DataQuery QueryData()


Get information about future batch requests

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**DataQuery**](DataQuery.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **QueryDataBatch**
> DataQueryOutput QueryDataBatch(dataQuery)


Get raw data from a previous data request

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **dataQuery** | [**DataQueryInput**](DataQueryInput.md)| Wrapper Data Query | 

### Return type

[**DataQueryOutput**](DataQueryOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UpdateAlert**
> AlertInput UpdateAlert(ctx, id, alertInput)


Update an Alert

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **id** | **int64**| ID of alert | 
  **alertInput** | [**AlertInput**](AlertInput.md)| AlterInput | 

### Return type

[**AlertInput**](AlertInput.md)

### Authorization

[bearerHeader](../README.md#bearerHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

