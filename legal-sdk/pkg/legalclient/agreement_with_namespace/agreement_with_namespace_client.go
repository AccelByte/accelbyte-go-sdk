// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package agreement_with_namespace

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new agreement with namespace API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for agreement with namespace API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	RetrieveAcceptedAgreementsForMultiUsers(params *RetrieveAcceptedAgreementsForMultiUsersParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAcceptedAgreementsForMultiUsersOK, error)
	RetrieveAcceptedAgreementsForMultiUsersShort(params *RetrieveAcceptedAgreementsForMultiUsersParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAcceptedAgreementsForMultiUsersOK, error)
	RetrieveAcceptedAgreements(params *RetrieveAcceptedAgreementsParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAcceptedAgreementsOK, error)
	RetrieveAcceptedAgreementsShort(params *RetrieveAcceptedAgreementsParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAcceptedAgreementsOK, error)
	RetrieveAllUsersByPolicyVersion(params *RetrieveAllUsersByPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllUsersByPolicyVersionOK, *RetrieveAllUsersByPolicyVersionNotFound, error)
	RetrieveAllUsersByPolicyVersionShort(params *RetrieveAllUsersByPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllUsersByPolicyVersionOK, error)
	DownloadExportedAgreementsInCSV(params *DownloadExportedAgreementsInCSVParams, authInfo runtime.ClientAuthInfoWriter) (*DownloadExportedAgreementsInCSVOK, *DownloadExportedAgreementsInCSVNotFound, error)
	DownloadExportedAgreementsInCSVShort(params *DownloadExportedAgreementsInCSVParams, authInfo runtime.ClientAuthInfoWriter) (*DownloadExportedAgreementsInCSVOK, error)
	InitiateExportAgreementsToCSV(params *InitiateExportAgreementsToCSVParams, authInfo runtime.ClientAuthInfoWriter) (*InitiateExportAgreementsToCSVOK, *InitiateExportAgreementsToCSVBadRequest, *InitiateExportAgreementsToCSVNotFound, *InitiateExportAgreementsToCSVConflict, error)
	InitiateExportAgreementsToCSVShort(params *InitiateExportAgreementsToCSVParams, authInfo runtime.ClientAuthInfoWriter) (*InitiateExportAgreementsToCSVOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use RetrieveAcceptedAgreementsForMultiUsersShort instead.

RetrieveAcceptedAgreementsForMultiUsers retrieve accepted legal agreements for multi users
This API will return all accepted Legal Agreements for each user, including agreements of game users if publisher user has corresponding game account.
*/
func (a *Client) RetrieveAcceptedAgreementsForMultiUsers(params *RetrieveAcceptedAgreementsForMultiUsersParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAcceptedAgreementsForMultiUsersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAcceptedAgreementsForMultiUsersParams()
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
		ID:                 "retrieveAcceptedAgreementsForMultiUsers",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/agreements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAcceptedAgreementsForMultiUsersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAcceptedAgreementsForMultiUsersOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAcceptedAgreementsForMultiUsersShort retrieve accepted legal agreements for multi users
This API will return all accepted Legal Agreements for each user, including agreements of game users if publisher user has corresponding game account.
*/
func (a *Client) RetrieveAcceptedAgreementsForMultiUsersShort(params *RetrieveAcceptedAgreementsForMultiUsersParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAcceptedAgreementsForMultiUsersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAcceptedAgreementsForMultiUsersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveAcceptedAgreementsForMultiUsers",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/agreements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAcceptedAgreementsForMultiUsersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAcceptedAgreementsForMultiUsersOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveAcceptedAgreementsShort instead.

RetrieveAcceptedAgreements retrieve accepted legal agreements
This API will return all accepted Legal Agreements for specified user.
*/
func (a *Client) RetrieveAcceptedAgreements(params *RetrieveAcceptedAgreementsParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAcceptedAgreementsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAcceptedAgreementsParams()
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
		ID:                 "retrieveAcceptedAgreements",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/agreements/policies/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAcceptedAgreementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAcceptedAgreementsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAcceptedAgreementsShort retrieve accepted legal agreements
This API will return all accepted Legal Agreements for specified user.
*/
func (a *Client) RetrieveAcceptedAgreementsShort(params *RetrieveAcceptedAgreementsParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAcceptedAgreementsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAcceptedAgreementsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveAcceptedAgreements",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/agreements/policies/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAcceptedAgreementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAcceptedAgreementsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveAllUsersByPolicyVersionShort instead.

RetrieveAllUsersByPolicyVersion retrieve users accepting legal agreements
This API will return all users who has accepted a specific policy version.
*/
func (a *Client) RetrieveAllUsersByPolicyVersion(params *RetrieveAllUsersByPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllUsersByPolicyVersionOK, *RetrieveAllUsersByPolicyVersionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllUsersByPolicyVersionParams()
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
		ID:                 "retrieveAllUsersByPolicyVersion",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/agreements/policy-versions/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllUsersByPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllUsersByPolicyVersionOK:
		return v, nil, nil

	case *RetrieveAllUsersByPolicyVersionNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAllUsersByPolicyVersionShort retrieve users accepting legal agreements
This API will return all users who has accepted a specific policy version.
*/
func (a *Client) RetrieveAllUsersByPolicyVersionShort(params *RetrieveAllUsersByPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllUsersByPolicyVersionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllUsersByPolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveAllUsersByPolicyVersion",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/agreements/policy-versions/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllUsersByPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllUsersByPolicyVersionOK:
		return v, nil
	case *RetrieveAllUsersByPolicyVersionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DownloadExportedAgreementsInCSVShort instead.

DownloadExportedAgreementsInCSV download exported users accepted agreements in csv
This API will check the status of export process.
If the export process has been completed, the response body will include the download url.
*/
func (a *Client) DownloadExportedAgreementsInCSV(params *DownloadExportedAgreementsInCSVParams, authInfo runtime.ClientAuthInfoWriter) (*DownloadExportedAgreementsInCSVOK, *DownloadExportedAgreementsInCSVNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDownloadExportedAgreementsInCSVParams()
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
		ID:                 "downloadExportedAgreementsInCSV",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/agreements/policy-versions/users/export-csv/download",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DownloadExportedAgreementsInCSVReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *DownloadExportedAgreementsInCSVOK:
		return v, nil, nil

	case *DownloadExportedAgreementsInCSVNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DownloadExportedAgreementsInCSVShort download exported users accepted agreements in csv
This API will check the status of export process.
If the export process has been completed, the response body will include the download url.
*/
func (a *Client) DownloadExportedAgreementsInCSVShort(params *DownloadExportedAgreementsInCSVParams, authInfo runtime.ClientAuthInfoWriter) (*DownloadExportedAgreementsInCSVOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDownloadExportedAgreementsInCSVParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "downloadExportedAgreementsInCSV",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/agreements/policy-versions/users/export-csv/download",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DownloadExportedAgreementsInCSVReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DownloadExportedAgreementsInCSVOK:
		return v, nil
	case *DownloadExportedAgreementsInCSVNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use InitiateExportAgreementsToCSVShort instead.

InitiateExportAgreementsToCSV initiate export users accepted agreements to csv
This API will initiate a worker to export list of users who has accepted a specific policy version into a CSV file.
To check the export state after initialize it, use `GET /admin/namespaces/{namespace}/agreements/policy-versions/users/export-csv/download` API.

This Initiate API is not allow multiple export worker running for the same namespace, it will return 409 http error if so.
*/
func (a *Client) InitiateExportAgreementsToCSV(params *InitiateExportAgreementsToCSVParams, authInfo runtime.ClientAuthInfoWriter) (*InitiateExportAgreementsToCSVOK, *InitiateExportAgreementsToCSVBadRequest, *InitiateExportAgreementsToCSVNotFound, *InitiateExportAgreementsToCSVConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewInitiateExportAgreementsToCSVParams()
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
		ID:                 "initiateExportAgreementsToCSV",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/agreements/policy-versions/users/export-csv/initiate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &InitiateExportAgreementsToCSVReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *InitiateExportAgreementsToCSVOK:
		return v, nil, nil, nil, nil

	case *InitiateExportAgreementsToCSVBadRequest:
		return nil, v, nil, nil, nil

	case *InitiateExportAgreementsToCSVNotFound:
		return nil, nil, v, nil, nil

	case *InitiateExportAgreementsToCSVConflict:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
InitiateExportAgreementsToCSVShort initiate export users accepted agreements to csv
This API will initiate a worker to export list of users who has accepted a specific policy version into a CSV file.
To check the export state after initialize it, use `GET /admin/namespaces/{namespace}/agreements/policy-versions/users/export-csv/download` API.

This Initiate API is not allow multiple export worker running for the same namespace, it will return 409 http error if so.
*/
func (a *Client) InitiateExportAgreementsToCSVShort(params *InitiateExportAgreementsToCSVParams, authInfo runtime.ClientAuthInfoWriter) (*InitiateExportAgreementsToCSVOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewInitiateExportAgreementsToCSVParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "initiateExportAgreementsToCSV",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/agreements/policy-versions/users/export-csv/initiate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &InitiateExportAgreementsToCSVReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *InitiateExportAgreementsToCSVOK:
		return v, nil
	case *InitiateExportAgreementsToCSVBadRequest:
		return nil, v
	case *InitiateExportAgreementsToCSVNotFound:
		return nil, v
	case *InitiateExportAgreementsToCSVConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
