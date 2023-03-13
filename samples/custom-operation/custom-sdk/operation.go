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
