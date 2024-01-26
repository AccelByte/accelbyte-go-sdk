// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package servers

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewServerHistoryParams creates a new ServerHistoryParams object
// with the default values initialized.
func NewServerHistoryParams() *ServerHistoryParams {
	var ()
	return &ServerHistoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewServerHistoryParamsWithTimeout creates a new ServerHistoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewServerHistoryParamsWithTimeout(timeout time.Duration) *ServerHistoryParams {
	var ()
	return &ServerHistoryParams{

		timeout: timeout,
	}
}

// NewServerHistoryParamsWithContext creates a new ServerHistoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewServerHistoryParamsWithContext(ctx context.Context) *ServerHistoryParams {
	var ()
	return &ServerHistoryParams{

		Context: ctx,
	}
}

// NewServerHistoryParamsWithHTTPClient creates a new ServerHistoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewServerHistoryParamsWithHTTPClient(client *http.Client) *ServerHistoryParams {
	var ()
	return &ServerHistoryParams{
		HTTPClient: client,
	}
}

/*ServerHistoryParams contains all the parameters to send to the API endpoint
for the server history operation typically these are written to a http.Request
*/
type ServerHistoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*ServerID
	  the id of the dedicated server

	*/
	ServerID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the server history params
func (o *ServerHistoryParams) WithTimeout(timeout time.Duration) *ServerHistoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the server history params
func (o *ServerHistoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the server history params
func (o *ServerHistoryParams) WithContext(ctx context.Context) *ServerHistoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the server history params
func (o *ServerHistoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the server history params
func (o *ServerHistoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the server history params
func (o *ServerHistoryParams) WithHTTPClient(client *http.Client) *ServerHistoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the server history params
func (o *ServerHistoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the server history params
func (o *ServerHistoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ServerHistoryParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the server history params
func (o *ServerHistoryParams) WithNamespace(namespace string) *ServerHistoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the server history params
func (o *ServerHistoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithServerID adds the serverID to the server history params
func (o *ServerHistoryParams) WithServerID(serverID string) *ServerHistoryParams {
	o.SetServerID(serverID)
	return o
}

// SetServerID adds the serverId to the server history params
func (o *ServerHistoryParams) SetServerID(serverID string) {
	o.ServerID = serverID
}

// WriteToRequest writes these params to a swagger request
func (o *ServerHistoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param serverID
	if err := r.SetPathParam("serverID", o.ServerID); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
