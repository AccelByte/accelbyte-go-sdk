# Add Custom Operation into AccelByte SDK

## Background

Majority of Go Server SDK codes are generated from [specification files](../spec) using codegen tools.
Any attempt to customize Go Server SDK must avoid editing files that are marked as `DO NOT EDIT`.
Also, it is best practice to extend the functionality of Go Server SDK by inherit the base classes or add new
implementation for partial classes to ensure less complications when upgrading Go Server SDK.

## How to Create a Custom Operation

In this guide, we will explain on how to create a custom operation for a custom endpoint and integrate it with
the SDK core.

### Goal

Create an operation class and along it the response model,
let's use this [endpoint](https://developers.google.com/custom-search/v1/reference/rest/v1/cse/list)
`GET https://www.googleapis.com/customsearch/v1` as an example for a custom endpoint.

Let's use these query parameters:

* `cx` - The Programmable Search Engine ID to use for this request. Create one from [here](https://programmablesearchengine.google.com/controlpanel/all).
* `key` - An API key is a unique string that lets you access an API. Create one from [here](https://cloud.google.com/docs/authentication/api-keys#create) and enable Custom Search API [here](https://console.developers.google.com/apis/api/customsearch.googleapis.com). 
* `num` - Number of search results to return.
    * Valid values are integers between 1 and 10, inclusive.
* `q` - Query
* `safe` - Search safety level. Acceptable values are:
    * `active`: Enables SafeSearch filtering.
    * `off`: Disables SafeSearch filtering. (default)

### Create the parameter

```go
// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package custom_sdk

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// CustomSearchParams is the custom params
type CustomSearchParams struct {
	Cx   string
	Num  *int64
	Q    string
	Safe string

	Key string
}

func (o *CustomSearchParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {
	var res []error

	// query params
	if err := r.SetQueryParam("cx", o.Cx); err != nil {
		return err
	}
	if err := r.SetQueryParam("q", o.Q); err != nil {
		return err
	}
	if err := r.SetQueryParam("safe", o.Safe); err != nil {
		return err
	}
	if err := r.SetQueryParam("key", o.Key); err != nil {
		return err
	}

	if o.Num != nil {

		// query param limit
		var qrNum int64
		if o.Num != nil {
			qrNum = *o.Num
		}
		qLimit := swag.FormatInt64(qrNum)
		if qLimit != "" {
			if err := r.SetQueryParam("num", qLimit); err != nil {
				return err
			}
		}

	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}

```

### Create the response

```go
// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package custom_sdk

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

type GetReader struct {
}

func (o *GetReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewOk()
		if err := result.readResponse(response, consumer, nil); err != nil {
			return nil, err
		}

		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("requested url returns an error %d: %s", response.Code(), string(data))
	}
}

// Ok is a custom response
// whereas operation syncSteamInventory uses SyncSteamInventoryNoContent as the response
type Ok struct {
	Payload interface{}
}

func NewOk() *Ok {
	return &Ok{}
}

func (o *Ok) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

```

### Create the Operation Class

```go
// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package custom_sdk

import (
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	httptransport "github.com/go-openapi/runtime/client"
)

type CustomizedService struct {
	Customize ClientService
}

func New(transport runtime.ClientTransport) *CustomizedService {
	cli := new(CustomizedService)
	cli.Customize = NewService(transport)

	return cli
}

func NewClientWithBasePath(url string, endpoint string) *CustomizedService {
	schemes := []string{"https"}

	transport := httptransport.New(url, endpoint, schemes)

	return New(transport)
}

// NewService creates the operations
func NewService(transport runtime.ClientTransport) ClientService {
	return &Client{transport: transport}
}

type Client struct {
	transport runtime.ClientTransport
}

type ClientService interface {
	CustomSearch(params *CustomSearchParams) (*Ok, error)
}

func (a *Client) CustomSearch(params *CustomSearchParams) (*Ok, error) {
	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CustomSearch",
		Method:             "GET",
		PathPattern:        "/customsearch/v1",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetReader{},
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {
	case *Ok:
		return v, nil

	default:
		return nil, fmt.Errorf("unexpected Type %v", reflect.TypeOf(v))
	}
}

```

### Create the Wrapper

Use the wrapper to wraps the parameter, response, and operation.

```go
// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package custom

import (
	custom_sdk "golang-application/custom-sdk"
)

// CustomService wraps the client on top of the operation
type CustomService struct {
	Client *custom_sdk.CustomizedService
}

func (c *CustomService) CustomSearch(input *custom_sdk.CustomSearchParams) (*custom_sdk.Ok, error) {
	ok, err := c.Client.Customize.CustomSearch(input)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

```

### Testing
In the `main.go`, set the envar value for `CX` and `KEY`. 
```
// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package main

import (
	"encoding/json"
	"os"

	"github.com/sirupsen/logrus"
	custom_sdk "golang-application/custom-sdk"
	"golang-application/services-api/pkg/service/custom"
)

func main() {
	// Arrange - call custom service client (wrapper)
	CustomService := &custom.CustomService{
		Client: custom_sdk.NewClientWithBasePath("www.googleapis.com", ""),
	}

	// Execute - call the custom search endpoint
	limit := int64(1)
	ok, err := CustomService.CustomSearch(&custom_sdk.CustomSearchParams{
		Cx:   os.Getenv("CX"),
		Num:  &limit,
		Q:    "query",
		Safe: "off",
		Key:  os.Getenv("KEY"),
	})
	if err != nil {
		logrus.Errorf("unable to call the custom service: %s", err.Error())

		return
	}

	// Result
	val, err := json.MarshalIndent(ok, "", "    ")
	if err != nil {
		logrus.Errorf("unable to marshal the response: %s", err.Error())

		return
	}

	logrus.Printf("successfully invoke the custom service: %s", val)
}

```
Run the app by using
```bash
$ go run main.go
```

Output example:

```
{
  "items": [
    {
      "title": "Google",
      "link": "https://www.google.com/"
    }
  ]
}
```

## References

Please see the [/sdk](../) directory for more examples on how to create custom models and
operations from generated code.

The working code for this example is found [here](../samples/custom-operation).