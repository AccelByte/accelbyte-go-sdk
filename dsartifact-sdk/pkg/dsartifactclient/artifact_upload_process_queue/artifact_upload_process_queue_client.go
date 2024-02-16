// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package artifact_upload_process_queue

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new artifact upload process queue API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for artifact upload process queue API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListNodesIPAddress(params *ListNodesIPAddressParams, authInfo runtime.ClientAuthInfoWriter) (*ListNodesIPAddressOK, *ListNodesIPAddressBadRequest, *ListNodesIPAddressInternalServerError, error)
	ListNodesIPAddressShort(params *ListNodesIPAddressParams, authInfo runtime.ClientAuthInfoWriter) (*ListNodesIPAddressOK, error)
	DeleteNodeByID(params *DeleteNodeByIDParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNodeByIDNoContent, *DeleteNodeByIDBadRequest, *DeleteNodeByIDInternalServerError, error)
	DeleteNodeByIDShort(params *DeleteNodeByIDParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNodeByIDNoContent, error)
	ListQueue(params *ListQueueParams, authInfo runtime.ClientAuthInfoWriter) (*ListQueueOK, *ListQueueBadRequest, *ListQueueUnauthorized, *ListQueueNotFound, *ListQueueInternalServerError, error)
	ListQueueShort(params *ListQueueParams, authInfo runtime.ClientAuthInfoWriter) (*ListQueueOK, error)
	GetActiveQueue(params *GetActiveQueueParams, authInfo runtime.ClientAuthInfoWriter) (*GetActiveQueueOK, *GetActiveQueueBadRequest, *GetActiveQueueUnauthorized, *GetActiveQueueNotFound, *GetActiveQueueInternalServerError, error)
	GetActiveQueueShort(params *GetActiveQueueParams, authInfo runtime.ClientAuthInfoWriter) (*GetActiveQueueOK, error)
	SetActiveQueue(params *SetActiveQueueParams, authInfo runtime.ClientAuthInfoWriter) (*SetActiveQueueNoContent, *SetActiveQueueBadRequest, *SetActiveQueueUnauthorized, *SetActiveQueueInternalServerError, error)
	SetActiveQueueShort(params *SetActiveQueueParams, authInfo runtime.ClientAuthInfoWriter) (*SetActiveQueueNoContent, error)
	DeleteActiveQueue(params *DeleteActiveQueueParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteActiveQueueNoContent, *DeleteActiveQueueBadRequest, *DeleteActiveQueueUnauthorized, *DeleteActiveQueueInternalServerError, error)
	DeleteActiveQueueShort(params *DeleteActiveQueueParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteActiveQueueNoContent, error)
	ReportFailedUpload(params *ReportFailedUploadParams, authInfo runtime.ClientAuthInfoWriter) (*ReportFailedUploadNoContent, *ReportFailedUploadBadRequest, *ReportFailedUploadUnauthorized, *ReportFailedUploadInternalServerError, error)
	ReportFailedUploadShort(params *ReportFailedUploadParams, authInfo runtime.ClientAuthInfoWriter) (*ReportFailedUploadNoContent, error)
	DeleteQueue(params *DeleteQueueParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteQueueNoContent, *DeleteQueueBadRequest, *DeleteQueueInternalServerError, error)
	DeleteQueueShort(params *DeleteQueueParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteQueueNoContent, error)
	ListAllActiveQueue(params *ListAllActiveQueueParams, authInfo runtime.ClientAuthInfoWriter) (*ListAllActiveQueueOK, *ListAllActiveQueueBadRequest, *ListAllActiveQueueNotFound, *ListAllActiveQueueInternalServerError, error)
	ListAllActiveQueueShort(params *ListAllActiveQueueParams, authInfo runtime.ClientAuthInfoWriter) (*ListAllActiveQueueOK, error)
	ListAllQueue(params *ListAllQueueParams, authInfo runtime.ClientAuthInfoWriter) (*ListAllQueueOK, *ListAllQueueBadRequest, *ListAllQueueNotFound, *ListAllQueueInternalServerError, error)
	ListAllQueueShort(params *ListAllQueueParams, authInfo runtime.ClientAuthInfoWriter) (*ListAllQueueOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use ListNodesIPAddressShort instead.

ListNodesIPAddress get ip address of all nodes that all artifact in queue resides. this ip address is the ip address of nomad client
Required permission: ADMIN:DSAM:ARTIFACT:NODES [READ]

Required scope: social

This endpoint will list IP Address of all artifact queue
*/
func (a *Client) ListNodesIPAddress(params *ListNodesIPAddressParams, authInfo runtime.ClientAuthInfoWriter) (*ListNodesIPAddressOK, *ListNodesIPAddressBadRequest, *ListNodesIPAddressInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListNodesIPAddressParams()
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
		ID:                 "listNodesIPAddress",
		Method:             "GET",
		PathPattern:        "/dsartifact/artifacts/nodes/ipaddresses",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListNodesIPAddressReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ListNodesIPAddressOK:
		return v, nil, nil, nil

	case *ListNodesIPAddressBadRequest:
		return nil, v, nil, nil

	case *ListNodesIPAddressInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListNodesIPAddressShort get ip address of all nodes that all artifact in queue resides. this ip address is the ip address of nomad client
Required permission: ADMIN:DSAM:ARTIFACT:NODES [READ]

Required scope: social

This endpoint will list IP Address of all artifact queue
*/
func (a *Client) ListNodesIPAddressShort(params *ListNodesIPAddressParams, authInfo runtime.ClientAuthInfoWriter) (*ListNodesIPAddressOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListNodesIPAddressParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listNodesIPAddress",
		Method:             "GET",
		PathPattern:        "/dsartifact/artifacts/nodes/ipaddresses",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListNodesIPAddressReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListNodesIPAddressOK:
		return v, nil
	case *ListNodesIPAddressBadRequest:
		return nil, v
	case *ListNodesIPAddressInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteNodeByIDShort instead.

DeleteNodeByID delete a node that previously held artifact queue by ip address
Required permission: ADMIN:DSAM:ARTIFACT:NODES [DELETE]

Required scope: social

This endpoint will delete a node by IP
*/
func (a *Client) DeleteNodeByID(params *DeleteNodeByIDParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNodeByIDNoContent, *DeleteNodeByIDBadRequest, *DeleteNodeByIDInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteNodeByIDParams()
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
		ID:                 "deleteNodeByID",
		Method:             "DELETE",
		PathPattern:        "/dsartifact/artifacts/nodes/ipaddresses",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteNodeByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteNodeByIDNoContent:
		return v, nil, nil, nil

	case *DeleteNodeByIDBadRequest:
		return nil, v, nil, nil

	case *DeleteNodeByIDInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteNodeByIDShort delete a node that previously held artifact queue by ip address
Required permission: ADMIN:DSAM:ARTIFACT:NODES [DELETE]

Required scope: social

This endpoint will delete a node by IP
*/
func (a *Client) DeleteNodeByIDShort(params *DeleteNodeByIDParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNodeByIDNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteNodeByIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteNodeByID",
		Method:             "DELETE",
		PathPattern:        "/dsartifact/artifacts/nodes/ipaddresses",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteNodeByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteNodeByIDNoContent:
		return v, nil
	case *DeleteNodeByIDBadRequest:
		return nil, v
	case *DeleteNodeByIDInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ListQueueShort instead.

ListQueue get list of queues on a node
```
Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [READ]

This endpoint is used to get the list of queues on a node
```
*/
func (a *Client) ListQueue(params *ListQueueParams, authInfo runtime.ClientAuthInfoWriter) (*ListQueueOK, *ListQueueBadRequest, *ListQueueUnauthorized, *ListQueueNotFound, *ListQueueInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListQueueParams()
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
		ID:                 "listQueue",
		Method:             "GET",
		PathPattern:        "/dsartifact/artifacts/queues",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListQueueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ListQueueOK:
		return v, nil, nil, nil, nil, nil

	case *ListQueueBadRequest:
		return nil, v, nil, nil, nil, nil

	case *ListQueueUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *ListQueueNotFound:
		return nil, nil, nil, v, nil, nil

	case *ListQueueInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListQueueShort get list of queues on a node
```
Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [READ]

This endpoint is used to get the list of queues on a node
```
*/
func (a *Client) ListQueueShort(params *ListQueueParams, authInfo runtime.ClientAuthInfoWriter) (*ListQueueOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListQueueParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listQueue",
		Method:             "GET",
		PathPattern:        "/dsartifact/artifacts/queues",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListQueueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListQueueOK:
		return v, nil
	case *ListQueueBadRequest:
		return nil, v
	case *ListQueueUnauthorized:
		return nil, v
	case *ListQueueNotFound:
		return nil, v
	case *ListQueueInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetActiveQueueShort instead.

GetActiveQueue get active queue process on a node
```
Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [READ]

This endpoint is used to get an active queue process on a node
```
*/
func (a *Client) GetActiveQueue(params *GetActiveQueueParams, authInfo runtime.ClientAuthInfoWriter) (*GetActiveQueueOK, *GetActiveQueueBadRequest, *GetActiveQueueUnauthorized, *GetActiveQueueNotFound, *GetActiveQueueInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetActiveQueueParams()
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
		ID:                 "getActiveQueue",
		Method:             "GET",
		PathPattern:        "/dsartifact/artifacts/queues/active",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetActiveQueueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetActiveQueueOK:
		return v, nil, nil, nil, nil, nil

	case *GetActiveQueueBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetActiveQueueUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetActiveQueueNotFound:
		return nil, nil, nil, v, nil, nil

	case *GetActiveQueueInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetActiveQueueShort get active queue process on a node
```
Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [READ]

This endpoint is used to get an active queue process on a node
```
*/
func (a *Client) GetActiveQueueShort(params *GetActiveQueueParams, authInfo runtime.ClientAuthInfoWriter) (*GetActiveQueueOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetActiveQueueParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getActiveQueue",
		Method:             "GET",
		PathPattern:        "/dsartifact/artifacts/queues/active",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetActiveQueueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetActiveQueueOK:
		return v, nil
	case *GetActiveQueueBadRequest:
		return nil, v
	case *GetActiveQueueUnauthorized:
		return nil, v
	case *GetActiveQueueNotFound:
		return nil, v
	case *GetActiveQueueInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SetActiveQueueShort instead.

SetActiveQueue set a queue as active queue
```
Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [UPDATE]

This endpoint is used to set a queue entry as the current active queue
for artifact uploading process on a node
```
*/
func (a *Client) SetActiveQueue(params *SetActiveQueueParams, authInfo runtime.ClientAuthInfoWriter) (*SetActiveQueueNoContent, *SetActiveQueueBadRequest, *SetActiveQueueUnauthorized, *SetActiveQueueInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetActiveQueueParams()
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
		ID:                 "setActiveQueue",
		Method:             "PUT",
		PathPattern:        "/dsartifact/artifacts/queues/active",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetActiveQueueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SetActiveQueueNoContent:
		return v, nil, nil, nil, nil

	case *SetActiveQueueBadRequest:
		return nil, v, nil, nil, nil

	case *SetActiveQueueUnauthorized:
		return nil, nil, v, nil, nil

	case *SetActiveQueueInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SetActiveQueueShort set a queue as active queue
```
Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [UPDATE]

This endpoint is used to set a queue entry as the current active queue
for artifact uploading process on a node
```
*/
func (a *Client) SetActiveQueueShort(params *SetActiveQueueParams, authInfo runtime.ClientAuthInfoWriter) (*SetActiveQueueNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetActiveQueueParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "setActiveQueue",
		Method:             "PUT",
		PathPattern:        "/dsartifact/artifacts/queues/active",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetActiveQueueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SetActiveQueueNoContent:
		return v, nil
	case *SetActiveQueueBadRequest:
		return nil, v
	case *SetActiveQueueUnauthorized:
		return nil, v
	case *SetActiveQueueInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteActiveQueueShort instead.

DeleteActiveQueue delete active queue process on a node
```
Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [DELETE]

This endpoint is used to delete active queue process on a node
```
*/
func (a *Client) DeleteActiveQueue(params *DeleteActiveQueueParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteActiveQueueNoContent, *DeleteActiveQueueBadRequest, *DeleteActiveQueueUnauthorized, *DeleteActiveQueueInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteActiveQueueParams()
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
		ID:                 "deleteActiveQueue",
		Method:             "DELETE",
		PathPattern:        "/dsartifact/artifacts/queues/active",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteActiveQueueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteActiveQueueNoContent:
		return v, nil, nil, nil, nil

	case *DeleteActiveQueueBadRequest:
		return nil, v, nil, nil, nil

	case *DeleteActiveQueueUnauthorized:
		return nil, nil, v, nil, nil

	case *DeleteActiveQueueInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteActiveQueueShort delete active queue process on a node
```
Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [DELETE]

This endpoint is used to delete active queue process on a node
```
*/
func (a *Client) DeleteActiveQueueShort(params *DeleteActiveQueueParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteActiveQueueNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteActiveQueueParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteActiveQueue",
		Method:             "DELETE",
		PathPattern:        "/dsartifact/artifacts/queues/active",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteActiveQueueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteActiveQueueNoContent:
		return v, nil
	case *DeleteActiveQueueBadRequest:
		return nil, v
	case *DeleteActiveQueueUnauthorized:
		return nil, v
	case *DeleteActiveQueueInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ReportFailedUploadShort instead.

ReportFailedUpload report failed artifact upload
```
Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [UPDATE]

This endpoint is used to report a failed artifact upload
```
*/
func (a *Client) ReportFailedUpload(params *ReportFailedUploadParams, authInfo runtime.ClientAuthInfoWriter) (*ReportFailedUploadNoContent, *ReportFailedUploadBadRequest, *ReportFailedUploadUnauthorized, *ReportFailedUploadInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewReportFailedUploadParams()
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
		ID:                 "reportFailedUpload",
		Method:             "PUT",
		PathPattern:        "/dsartifact/artifacts/queues/failed",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ReportFailedUploadReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ReportFailedUploadNoContent:
		return v, nil, nil, nil, nil

	case *ReportFailedUploadBadRequest:
		return nil, v, nil, nil, nil

	case *ReportFailedUploadUnauthorized:
		return nil, nil, v, nil, nil

	case *ReportFailedUploadInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ReportFailedUploadShort report failed artifact upload
```
Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [UPDATE]

This endpoint is used to report a failed artifact upload
```
*/
func (a *Client) ReportFailedUploadShort(params *ReportFailedUploadParams, authInfo runtime.ClientAuthInfoWriter) (*ReportFailedUploadNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewReportFailedUploadParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "reportFailedUpload",
		Method:             "PUT",
		PathPattern:        "/dsartifact/artifacts/queues/failed",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ReportFailedUploadReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ReportFailedUploadNoContent:
		return v, nil
	case *ReportFailedUploadBadRequest:
		return nil, v
	case *ReportFailedUploadUnauthorized:
		return nil, v
	case *ReportFailedUploadInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteQueueShort instead.

DeleteQueue delete a queue entry
Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:ARTIFACT:QUEUE [DELETE]

Required scope: social

This endpoint will delete a queue entry
*/
func (a *Client) DeleteQueue(params *DeleteQueueParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteQueueNoContent, *DeleteQueueBadRequest, *DeleteQueueInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteQueueParams()
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
		ID:                 "deleteQueue",
		Method:             "DELETE",
		PathPattern:        "/dsartifact/namespaces/{namespace}/artifacts/queues",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteQueueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteQueueNoContent:
		return v, nil, nil, nil

	case *DeleteQueueBadRequest:
		return nil, v, nil, nil

	case *DeleteQueueInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteQueueShort delete a queue entry
Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:ARTIFACT:QUEUE [DELETE]

Required scope: social

This endpoint will delete a queue entry
*/
func (a *Client) DeleteQueueShort(params *DeleteQueueParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteQueueNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteQueueParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteQueue",
		Method:             "DELETE",
		PathPattern:        "/dsartifact/namespaces/{namespace}/artifacts/queues",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteQueueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteQueueNoContent:
		return v, nil
	case *DeleteQueueBadRequest:
		return nil, v
	case *DeleteQueueInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ListAllActiveQueueShort instead.

ListAllActiveQueue get all currently uploading artifact queue
Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:ARTIFACT:QUEUE [READ]

Required scope: social

This endpoint will list all DSes which artifact is currently in uploading process.
*/
func (a *Client) ListAllActiveQueue(params *ListAllActiveQueueParams, authInfo runtime.ClientAuthInfoWriter) (*ListAllActiveQueueOK, *ListAllActiveQueueBadRequest, *ListAllActiveQueueNotFound, *ListAllActiveQueueInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListAllActiveQueueParams()
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
		ID:                 "listAllActiveQueue",
		Method:             "GET",
		PathPattern:        "/dsartifact/namespaces/{namespace}/artifacts/queues/active/all",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListAllActiveQueueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ListAllActiveQueueOK:
		return v, nil, nil, nil, nil

	case *ListAllActiveQueueBadRequest:
		return nil, v, nil, nil, nil

	case *ListAllActiveQueueNotFound:
		return nil, nil, v, nil, nil

	case *ListAllActiveQueueInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListAllActiveQueueShort get all currently uploading artifact queue
Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:ARTIFACT:QUEUE [READ]

Required scope: social

This endpoint will list all DSes which artifact is currently in uploading process.
*/
func (a *Client) ListAllActiveQueueShort(params *ListAllActiveQueueParams, authInfo runtime.ClientAuthInfoWriter) (*ListAllActiveQueueOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListAllActiveQueueParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listAllActiveQueue",
		Method:             "GET",
		PathPattern:        "/dsartifact/namespaces/{namespace}/artifacts/queues/active/all",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListAllActiveQueueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListAllActiveQueueOK:
		return v, nil
	case *ListAllActiveQueueBadRequest:
		return nil, v
	case *ListAllActiveQueueNotFound:
		return nil, v
	case *ListAllActiveQueueInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ListAllQueueShort instead.

ListAllQueue get all artifact upload process queues
Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:ARTIFACT:QUEUE [READ]

Required scope: social

This endpoint will list all DSes which has artifact in upload queue.
*/
func (a *Client) ListAllQueue(params *ListAllQueueParams, authInfo runtime.ClientAuthInfoWriter) (*ListAllQueueOK, *ListAllQueueBadRequest, *ListAllQueueNotFound, *ListAllQueueInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListAllQueueParams()
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
		ID:                 "listAllQueue",
		Method:             "GET",
		PathPattern:        "/dsartifact/namespaces/{namespace}/artifacts/queues/all",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListAllQueueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ListAllQueueOK:
		return v, nil, nil, nil, nil

	case *ListAllQueueBadRequest:
		return nil, v, nil, nil, nil

	case *ListAllQueueNotFound:
		return nil, nil, v, nil, nil

	case *ListAllQueueInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListAllQueueShort get all artifact upload process queues
Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:ARTIFACT:QUEUE [READ]

Required scope: social

This endpoint will list all DSes which has artifact in upload queue.
*/
func (a *Client) ListAllQueueShort(params *ListAllQueueParams, authInfo runtime.ClientAuthInfoWriter) (*ListAllQueueOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListAllQueueParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listAllQueue",
		Method:             "GET",
		PathPattern:        "/dsartifact/namespaces/{namespace}/artifacts/queues/all",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListAllQueueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListAllQueueOK:
		return v, nil
	case *ListAllQueueBadRequest:
		return nil, v
	case *ListAllQueueNotFound:
		return nil, v
	case *ListAllQueueInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
