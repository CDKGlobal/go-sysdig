# How to use the data API

Using the data API is not trivial. This is because the keys that are used in the Query are dynamic. This means Swagger can't generate a model for the objects and must use `interface{}`.

The following example illustrates how to extract the connection table for a given container image.

```go
// First, create a struct for the fields that you want
type MyMetricQuery struct {
  NetLocalEndpoint string `json:"field1"`
  NetLocalService string `json:"field2"`
  NetRemoteEndpoint string `json:"field3"`
  NetRemoteService string `json:"field4"`
}
metric := MyMetricQuery{
  NetLocalEndpoint: "net.local.endpoint",
  NetLocalService: "net.local.service",
  NetRemoteEndpoint: "net.remote.endpoint",
  NetRemoteService: "net.remote.service",
}

// Then, create an interface object to get past some of the compiler errors. There is likely a more elegant way to doing this.
var imetric interface{}
imetric = metric

// Construct your query. To easily build your query, use the "Web Developer Tools" feature of your browser and inspect the desired metric request from the Sysdig console.
query := sysdig.DataQuery{
  Format: &sysdig.DataQueryFormat{
    Type_: "data",
  },
  Group: &sysdig.DataQueryGroup{
    By: []sysdig.DataQueryGroupBy{
      {
        Metric: "field1",
      },
      {
        Metric: "field2",
      },
      {
        Metric: "field3",
      },
      {
        Metric: "field4",
      },
    },
    Configuration: &sysdig.DataQueryGroupConfiguration{
      Groups: []sysdig.DataQueryGroupConfigurationGroups{
        {
          GroupBy: []sysdig.DataQueryGroupConfigurationGroupBy{
            {
              Metric: "container.image",
            },
          },
        },
      },
    },
  },
  Scope: fmt.Sprintf("container.image = '%s'", image),
  Metrics: &imetric,
  //Paging: &sysdig.DataQueryPaging{
  //	From: 0,
  //	To: 9,
  //},
  Time: &sysdig.DataQueryTime{
    From: 1513446600000000,
    To: 1513450200000000,
  },
}
queryInput := sysdig.DataQueryInput{
  Requests: []sysdig.DataQuery{query},
}

// Finally, we can query the Batch API
res, _, err := client.DefaultApi.QueryDataBatch(queryInput)

if err != nil {
  fmt.Fprintf(w, "Err %v", err)
} else {
  for _, response := range res.Responses {
    for _, data := range response.Data {
      // Ideally, we would be able to cast or marshal into our "MyMetricQuery" struct
      d := data.(map[string]interface{})
      // net.remote.service
      log.Printf("%s", d["field4"].(string))
    }
  }
}

```
