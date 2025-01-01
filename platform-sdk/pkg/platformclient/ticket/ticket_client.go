// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package ticket

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new ticket API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for ticket API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetTicketDynamic(params *GetTicketDynamicParams, authInfo runtime.ClientAuthInfoWriter) (*GetTicketDynamicOK, *GetTicketDynamicNotFound, error)
	GetTicketDynamicShort(params *GetTicketDynamicParams, authInfo runtime.ClientAuthInfoWriter) (*GetTicketDynamicOK, error)
	DecreaseTicketSale(params *DecreaseTicketSaleParams, authInfo runtime.ClientAuthInfoWriter) (*DecreaseTicketSaleNoContent, *DecreaseTicketSaleNotFound, *DecreaseTicketSaleUnprocessableEntity, error)
	DecreaseTicketSaleShort(params *DecreaseTicketSaleParams, authInfo runtime.ClientAuthInfoWriter) (*DecreaseTicketSaleNoContent, error)
	GetTicketBoothID(params *GetTicketBoothIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetTicketBoothIDOK, *GetTicketBoothIDNotFound, error)
	GetTicketBoothIDShort(params *GetTicketBoothIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetTicketBoothIDOK, error)
	IncreaseTicketSale(params *IncreaseTicketSaleParams, authInfo runtime.ClientAuthInfoWriter) (*IncreaseTicketSaleOK, *IncreaseTicketSaleNotFound, *IncreaseTicketSaleUnprocessableEntity, error)
	IncreaseTicketSaleShort(params *IncreaseTicketSaleParams, authInfo runtime.ClientAuthInfoWriter) (*IncreaseTicketSaleOK, error)
	AcquireUserTicket(params *AcquireUserTicketParams, authInfo runtime.ClientAuthInfoWriter) (*AcquireUserTicketOK, *AcquireUserTicketNotFound, *AcquireUserTicketConflict, *AcquireUserTicketUnprocessableEntity, error)
	AcquireUserTicketShort(params *AcquireUserTicketParams, authInfo runtime.ClientAuthInfoWriter) (*AcquireUserTicketOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetTicketDynamicShort instead.

GetTicketDynamic get ticket dynamic
 [SERVICE COMMUNICATION ONLY] Get ticket(code/key) dynamic based on booth name.
Other detail info:
                      * Returns : ticket dynamic
*/
func (a *Client) GetTicketDynamic(params *GetTicketDynamicParams, authInfo runtime.ClientAuthInfoWriter) (*GetTicketDynamicOK, *GetTicketDynamicNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTicketDynamicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getTicketDynamic",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/tickets/{boothName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTicketDynamicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetTicketDynamicOK:
		return v, nil, nil

	case *GetTicketDynamicNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTicketDynamicShort get ticket dynamic
 [SERVICE COMMUNICATION ONLY] Get ticket(code/key) dynamic based on booth name.
Other detail info:
                      * Returns : ticket dynamic
*/
func (a *Client) GetTicketDynamicShort(params *GetTicketDynamicParams, authInfo runtime.ClientAuthInfoWriter) (*GetTicketDynamicOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTicketDynamicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getTicketDynamic",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/tickets/{boothName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTicketDynamicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTicketDynamicOK:
		return v, nil
	case *GetTicketDynamicNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DecreaseTicketSaleShort instead.

DecreaseTicketSale decrease ticket sale
 [SERVICE COMMUNICATION ONLY] Decrease ticket(code/key) sale if requested orderNo is already increased.
*/
func (a *Client) DecreaseTicketSale(params *DecreaseTicketSaleParams, authInfo runtime.ClientAuthInfoWriter) (*DecreaseTicketSaleNoContent, *DecreaseTicketSaleNotFound, *DecreaseTicketSaleUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDecreaseTicketSaleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "decreaseTicketSale",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/tickets/{boothName}/decrement",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DecreaseTicketSaleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DecreaseTicketSaleNoContent:
		return v, nil, nil, nil

	case *DecreaseTicketSaleNotFound:
		return nil, v, nil, nil

	case *DecreaseTicketSaleUnprocessableEntity:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DecreaseTicketSaleShort decrease ticket sale
 [SERVICE COMMUNICATION ONLY] Decrease ticket(code/key) sale if requested orderNo is already increased.
*/
func (a *Client) DecreaseTicketSaleShort(params *DecreaseTicketSaleParams, authInfo runtime.ClientAuthInfoWriter) (*DecreaseTicketSaleNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDecreaseTicketSaleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "decreaseTicketSale",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/tickets/{boothName}/decrement",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DecreaseTicketSaleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DecreaseTicketSaleNoContent:
		return v, nil
	case *DecreaseTicketSaleNotFound:
		return nil, v
	case *DecreaseTicketSaleUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetTicketBoothIDShort instead.

GetTicketBoothID get ticket booth id
Get ticket(code/key) booth ID.
Other detail info:
                      * Returns : ticket booth id
*/
func (a *Client) GetTicketBoothID(params *GetTicketBoothIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetTicketBoothIDOK, *GetTicketBoothIDNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTicketBoothIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getTicketBoothID",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/tickets/{boothName}/id",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTicketBoothIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetTicketBoothIDOK:
		return v, nil, nil

	case *GetTicketBoothIDNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTicketBoothIDShort get ticket booth id
Get ticket(code/key) booth ID.
Other detail info:
                      * Returns : ticket booth id
*/
func (a *Client) GetTicketBoothIDShort(params *GetTicketBoothIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetTicketBoothIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTicketBoothIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getTicketBoothID",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/tickets/{boothName}/id",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTicketBoothIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTicketBoothIDOK:
		return v, nil
	case *GetTicketBoothIDNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use IncreaseTicketSaleShort instead.

IncreaseTicketSale increase ticket sale
 [SERVICE COMMUNICATION ONLY] increase ticket(code/key) sale.
Other detail info:
                      * Returns : Ticket sale increment result
*/
func (a *Client) IncreaseTicketSale(params *IncreaseTicketSaleParams, authInfo runtime.ClientAuthInfoWriter) (*IncreaseTicketSaleOK, *IncreaseTicketSaleNotFound, *IncreaseTicketSaleUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewIncreaseTicketSaleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "increaseTicketSale",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/tickets/{boothName}/increment",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &IncreaseTicketSaleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *IncreaseTicketSaleOK:
		return v, nil, nil, nil

	case *IncreaseTicketSaleNotFound:
		return nil, v, nil, nil

	case *IncreaseTicketSaleUnprocessableEntity:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
IncreaseTicketSaleShort increase ticket sale
 [SERVICE COMMUNICATION ONLY] increase ticket(code/key) sale.
Other detail info:
                      * Returns : Ticket sale increment result
*/
func (a *Client) IncreaseTicketSaleShort(params *IncreaseTicketSaleParams, authInfo runtime.ClientAuthInfoWriter) (*IncreaseTicketSaleOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewIncreaseTicketSaleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "increaseTicketSale",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/tickets/{boothName}/increment",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &IncreaseTicketSaleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *IncreaseTicketSaleOK:
		return v, nil
	case *IncreaseTicketSaleNotFound:
		return nil, v
	case *IncreaseTicketSaleUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AcquireUserTicketShort instead.

AcquireUserTicket acquire ticket
 [SERVICE COMMUNICATION ONLY] Acquire ticket(code/key) based on booth name.
Other detail info:
                      * Returns : acquire result
*/
func (a *Client) AcquireUserTicket(params *AcquireUserTicketParams, authInfo runtime.ClientAuthInfoWriter) (*AcquireUserTicketOK, *AcquireUserTicketNotFound, *AcquireUserTicketConflict, *AcquireUserTicketUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAcquireUserTicketParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "acquireUserTicket",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/tickets/{boothName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AcquireUserTicketReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AcquireUserTicketOK:
		return v, nil, nil, nil, nil

	case *AcquireUserTicketNotFound:
		return nil, v, nil, nil, nil

	case *AcquireUserTicketConflict:
		return nil, nil, v, nil, nil

	case *AcquireUserTicketUnprocessableEntity:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AcquireUserTicketShort acquire ticket
 [SERVICE COMMUNICATION ONLY] Acquire ticket(code/key) based on booth name.
Other detail info:
                      * Returns : acquire result
*/
func (a *Client) AcquireUserTicketShort(params *AcquireUserTicketParams, authInfo runtime.ClientAuthInfoWriter) (*AcquireUserTicketOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAcquireUserTicketParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "acquireUserTicket",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/tickets/{boothName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AcquireUserTicketReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AcquireUserTicketOK:
		return v, nil
	case *AcquireUserTicketNotFound:
		return nil, v
	case *AcquireUserTicketConflict:
		return nil, v
	case *AcquireUserTicketUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
