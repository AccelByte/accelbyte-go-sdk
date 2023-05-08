// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package admin_tickets

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin tickets API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin tickets API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListTickets(params *ListTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*ListTicketsOK, *ListTicketsInternalServerError, error)
	ListTicketsShort(params *ListTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*ListTicketsOK, error)
	TicketStatistic(params *TicketStatisticParams, authInfo runtime.ClientAuthInfoWriter) (*TicketStatisticOK, *TicketStatisticInternalServerError, error)
	TicketStatisticShort(params *TicketStatisticParams, authInfo runtime.ClientAuthInfoWriter) (*TicketStatisticOK, error)
	GetTicketDetail(params *GetTicketDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetTicketDetailOK, *GetTicketDetailNotFound, *GetTicketDetailInternalServerError, error)
	GetTicketDetailShort(params *GetTicketDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetTicketDetailOK, error)
	DeleteTicket(params *DeleteTicketParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTicketNoContent, *DeleteTicketNotFound, *DeleteTicketInternalServerError, error)
	DeleteTicketShort(params *DeleteTicketParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTicketNoContent, error)
	GetReportsByTicket(params *GetReportsByTicketParams, authInfo runtime.ClientAuthInfoWriter) (*GetReportsByTicketOK, *GetReportsByTicketInternalServerError, error)
	GetReportsByTicketShort(params *GetReportsByTicketParams, authInfo runtime.ClientAuthInfoWriter) (*GetReportsByTicketOK, error)
	UpdateTicketResolutions(params *UpdateTicketResolutionsParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTicketResolutionsOK, *UpdateTicketResolutionsInternalServerError, error)
	UpdateTicketResolutionsShort(params *UpdateTicketResolutionsParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTicketResolutionsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use ListTicketsShort instead.

ListTickets list report tickets
Required permission: ADMIN:NAMESPACE:{namespace}:TICKET [READ]
Tickets list can be ordered by:
- createdAt
- reportsCount
- status (currently there are OPEN, AUTO_MODERATED and CLOSED statuses, desc order will put ticket with CLOSED status at the top)
*/
func (a *Client) ListTickets(params *ListTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*ListTicketsOK, *ListTicketsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListTicketsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listTickets",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/tickets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListTicketsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *ListTicketsOK:
		return v, nil, nil

	case *ListTicketsInternalServerError:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListTicketsShort list report tickets
Required permission: ADMIN:NAMESPACE:{namespace}:TICKET [READ]
Tickets list can be ordered by:
- createdAt
- reportsCount
- status (currently there are OPEN, AUTO_MODERATED and CLOSED statuses, desc order will put ticket with CLOSED status at the top)
*/
func (a *Client) ListTicketsShort(params *ListTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*ListTicketsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListTicketsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listTickets",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/tickets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListTicketsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListTicketsOK:
		return v, nil
	case *ListTicketsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use TicketStatisticShort instead.

TicketStatistic ticket statistic
Required permission: ADMIN:NAMESPACE:{namespace}:TICKET [READ]
*/
func (a *Client) TicketStatistic(params *TicketStatisticParams, authInfo runtime.ClientAuthInfoWriter) (*TicketStatisticOK, *TicketStatisticInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTicketStatisticParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ticketStatistic",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/tickets/statistic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TicketStatisticReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *TicketStatisticOK:
		return v, nil, nil

	case *TicketStatisticInternalServerError:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TicketStatisticShort ticket statistic
Required permission: ADMIN:NAMESPACE:{namespace}:TICKET [READ]
*/
func (a *Client) TicketStatisticShort(params *TicketStatisticParams, authInfo runtime.ClientAuthInfoWriter) (*TicketStatisticOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTicketStatisticParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ticketStatistic",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/tickets/statistic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TicketStatisticReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TicketStatisticOK:
		return v, nil
	case *TicketStatisticInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetTicketDetailShort instead.

GetTicketDetail get single ticket
Required permission: ADMIN:NAMESPACE:{namespace}:TICKET [READ]
*/
func (a *Client) GetTicketDetail(params *GetTicketDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetTicketDetailOK, *GetTicketDetailNotFound, *GetTicketDetailInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTicketDetailParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getTicketDetail",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTicketDetailReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetTicketDetailOK:
		return v, nil, nil, nil

	case *GetTicketDetailNotFound:
		return nil, v, nil, nil

	case *GetTicketDetailInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTicketDetailShort get single ticket
Required permission: ADMIN:NAMESPACE:{namespace}:TICKET [READ]
*/
func (a *Client) GetTicketDetailShort(params *GetTicketDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetTicketDetailOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTicketDetailParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getTicketDetail",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTicketDetailReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTicketDetailOK:
		return v, nil
	case *GetTicketDetailNotFound:
		return nil, v
	case *GetTicketDetailInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteTicketShort instead.

DeleteTicket delete single ticket
Required permission: ADMIN:NAMESPACE:{namespace}:TICKET [DELETE]
This endpoint will delete ticket and all its reports.
*/
func (a *Client) DeleteTicket(params *DeleteTicketParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTicketNoContent, *DeleteTicketNotFound, *DeleteTicketInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTicketParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteTicket",
		Method:             "DELETE",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTicketReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteTicketNoContent:
		return v, nil, nil, nil

	case *DeleteTicketNotFound:
		return nil, v, nil, nil

	case *DeleteTicketInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteTicketShort delete single ticket
Required permission: ADMIN:NAMESPACE:{namespace}:TICKET [DELETE]
This endpoint will delete ticket and all its reports.
*/
func (a *Client) DeleteTicketShort(params *DeleteTicketParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTicketNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTicketParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteTicket",
		Method:             "DELETE",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTicketReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteTicketNoContent:
		return v, nil
	case *DeleteTicketNotFound:
		return nil, v
	case *DeleteTicketInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetReportsByTicketShort instead.

GetReportsByTicket get reports by ticket id
Required permission: ADMIN:NAMESPACE:{namespace}:TICKET [READ]
List reports ordered by createdAt in descending order.
*/
func (a *Client) GetReportsByTicket(params *GetReportsByTicketParams, authInfo runtime.ClientAuthInfoWriter) (*GetReportsByTicketOK, *GetReportsByTicketInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetReportsByTicketParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getReportsByTicket",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}/reports",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetReportsByTicketReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetReportsByTicketOK:
		return v, nil, nil

	case *GetReportsByTicketInternalServerError:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetReportsByTicketShort get reports by ticket id
Required permission: ADMIN:NAMESPACE:{namespace}:TICKET [READ]
List reports ordered by createdAt in descending order.
*/
func (a *Client) GetReportsByTicketShort(params *GetReportsByTicketParams, authInfo runtime.ClientAuthInfoWriter) (*GetReportsByTicketOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetReportsByTicketParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getReportsByTicket",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}/reports",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetReportsByTicketReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetReportsByTicketOK:
		return v, nil
	case *GetReportsByTicketInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateTicketResolutionsShort instead.

UpdateTicketResolutions update ticket resolution to a given status
Required permission: ADMIN:NAMESPACE:{namespace}:TICKET [UPDATE]
Update ticket resolution status to either OPEN or CLOSED. It is mandatory to provide notes
*/
func (a *Client) UpdateTicketResolutions(params *UpdateTicketResolutionsParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTicketResolutionsOK, *UpdateTicketResolutionsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateTicketResolutionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateTicketResolutions",
		Method:             "POST",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}/resolutions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateTicketResolutionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateTicketResolutionsOK:
		return v, nil, nil

	case *UpdateTicketResolutionsInternalServerError:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateTicketResolutionsShort update ticket resolution to a given status
Required permission: ADMIN:NAMESPACE:{namespace}:TICKET [UPDATE]
Update ticket resolution status to either OPEN or CLOSED. It is mandatory to provide notes
*/
func (a *Client) UpdateTicketResolutionsShort(params *UpdateTicketResolutionsParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTicketResolutionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateTicketResolutionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateTicketResolutions",
		Method:             "POST",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}/resolutions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateTicketResolutionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateTicketResolutionsOK:
		return v, nil
	case *UpdateTicketResolutionsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
