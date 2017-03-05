# \DefaultApi

All URIs are relative to *https://app.sysdigcloud.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateAlert**](DefaultApi.md#CreateAlert) | **Post** /alerts | 
[**DeleteAlert**](DefaultApi.md#DeleteAlert) | **Delete** /alerts/{id} | 
[**GetAlert**](DefaultApi.md#GetAlert) | **Get** /alerts/{id} | 
[**GetAlerts**](DefaultApi.md#GetAlerts) | **Get** /alerts | 
[**UpdateAlert**](DefaultApi.md#UpdateAlert) | **Put** /alerts/{id} | 


# **CreateAlert**
> AlertInput CreateAlert($alertInput)



Creates a new Alert


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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
> Alerts DeleteAlert($id)



Delete an Alert


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int64**| ID of alert | 

### Return type

[**Alerts**](Alerts.md)

### Authorization

[bearerHeader](../README.md#bearerHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetAlert**
> Alerts GetAlert($id)



Get an Alert


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int64**| ID of alert | 

### Return type

[**Alerts**](Alerts.md)

### Authorization

[bearerHeader](../README.md#bearerHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetAlerts**
> Alerts GetAlerts()



Gets Alerts


### Parameters
This endpoint does not need any parameter.

### Return type

[**Alerts**](Alerts.md)

### Authorization

[bearerHeader](../README.md#bearerHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UpdateAlert**
> Alerts UpdateAlert($id, $alertInput)



Update an Alert


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int64**| ID of alert | 
 **alertInput** | [**AlertInput**](AlertInput.md)| AlterInput | 

### Return type

[**Alerts**](Alerts.md)

### Authorization

[bearerHeader](../README.md#bearerHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

