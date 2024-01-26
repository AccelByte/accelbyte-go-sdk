// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package session_storage

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

// NewAdminReadSessionStorageParams creates a new AdminReadSessionStorageParams object
// with the default values initialized.
func NewAdminReadSessionStorageParams() *AdminReadSessionStorageParams {
	var ()
	return &AdminReadSessionStorageParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminReadSessionStorageParamsWithTimeout creates a new AdminReadSessionStorageParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminReadSessionStorageParamsWithTimeout(timeout time.Duration) *AdminReadSessionStorageParams {
	var ()
	return &AdminReadSessionStorageParams{

		timeout: timeout,
	}
}

// NewAdminReadSessionStorageParamsWithContext creates a new AdminReadSessionStorageParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminReadSessionStorageParamsWithContext(ctx context.Context) *AdminReadSessionStorageParams {
	var ()
	return &AdminReadSessionStorageParams{

		Context: ctx,
	}
}

// NewAdminReadSessionStorageParamsWithHTTPClient creates a new AdminReadSessionStorageParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminReadSessionStorageParamsWithHTTPClient(client *http.Client) *AdminReadSessionStorageParams {
	var ()
	return &AdminReadSessionStorageParams{
		HTTPClient: client,
	}
}

/*AdminReadSessionStorageParams contains all the parameters to send to the API endpoint
for the admin read session storage operation typically these are written to a http.Request
*/
type AdminReadSessionStorageParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*SessionID
	  sessionID

	*/
	SessionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin read session storage params
func (o *AdminReadSessionStorageParams) WithTimeout(timeout time.Duration) *AdminReadSessionStorageParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin read session storage params
func (o *AdminReadSessionStorageParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin read session storage params
func (o *AdminReadSessionStorageParams) WithContext(ctx context.Context) *AdminReadSessionStorageParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin read session storage params
func (o *AdminReadSessionStorageParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin read session storage params
func (o *AdminReadSessionStorageParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin read session storage params
func (o *AdminReadSessionStorageParams) WithHTTPClient(client *http.Client) *AdminReadSessionStorageParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin read session storage params
func (o *AdminReadSessionStorageParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin read session storage params
func (o *AdminReadSessionStorageParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminReadSessionStorageParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin read session storage params
func (o *AdminReadSessionStorageParams) WithNamespace(namespace string) *AdminReadSessionStorageParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin read session storage params
func (o *AdminReadSessionStorageParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the admin read session storage params
func (o *AdminReadSessionStorageParams) WithSessionID(sessionID string) *AdminReadSessionStorageParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the admin read session storage params
func (o *AdminReadSessionStorageParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminReadSessionStorageParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param sessionId
	if err := r.SetPathParam("sessionId", o.SessionID); err != nil {
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
