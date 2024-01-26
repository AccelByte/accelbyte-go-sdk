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

// NewAdminReadUserSessionStorageParams creates a new AdminReadUserSessionStorageParams object
// with the default values initialized.
func NewAdminReadUserSessionStorageParams() *AdminReadUserSessionStorageParams {
	var ()
	return &AdminReadUserSessionStorageParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminReadUserSessionStorageParamsWithTimeout creates a new AdminReadUserSessionStorageParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminReadUserSessionStorageParamsWithTimeout(timeout time.Duration) *AdminReadUserSessionStorageParams {
	var ()
	return &AdminReadUserSessionStorageParams{

		timeout: timeout,
	}
}

// NewAdminReadUserSessionStorageParamsWithContext creates a new AdminReadUserSessionStorageParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminReadUserSessionStorageParamsWithContext(ctx context.Context) *AdminReadUserSessionStorageParams {
	var ()
	return &AdminReadUserSessionStorageParams{

		Context: ctx,
	}
}

// NewAdminReadUserSessionStorageParamsWithHTTPClient creates a new AdminReadUserSessionStorageParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminReadUserSessionStorageParamsWithHTTPClient(client *http.Client) *AdminReadUserSessionStorageParams {
	var ()
	return &AdminReadUserSessionStorageParams{
		HTTPClient: client,
	}
}

/*AdminReadUserSessionStorageParams contains all the parameters to send to the API endpoint
for the admin read user session storage operation typically these are written to a http.Request
*/
type AdminReadUserSessionStorageParams struct {

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
	/*UserID
	  userID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin read user session storage params
func (o *AdminReadUserSessionStorageParams) WithTimeout(timeout time.Duration) *AdminReadUserSessionStorageParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin read user session storage params
func (o *AdminReadUserSessionStorageParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin read user session storage params
func (o *AdminReadUserSessionStorageParams) WithContext(ctx context.Context) *AdminReadUserSessionStorageParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin read user session storage params
func (o *AdminReadUserSessionStorageParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin read user session storage params
func (o *AdminReadUserSessionStorageParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin read user session storage params
func (o *AdminReadUserSessionStorageParams) WithHTTPClient(client *http.Client) *AdminReadUserSessionStorageParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin read user session storage params
func (o *AdminReadUserSessionStorageParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin read user session storage params
func (o *AdminReadUserSessionStorageParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminReadUserSessionStorageParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin read user session storage params
func (o *AdminReadUserSessionStorageParams) WithNamespace(namespace string) *AdminReadUserSessionStorageParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin read user session storage params
func (o *AdminReadUserSessionStorageParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the admin read user session storage params
func (o *AdminReadUserSessionStorageParams) WithSessionID(sessionID string) *AdminReadUserSessionStorageParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the admin read user session storage params
func (o *AdminReadUserSessionStorageParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WithUserID adds the userID to the admin read user session storage params
func (o *AdminReadUserSessionStorageParams) WithUserID(userID string) *AdminReadUserSessionStorageParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin read user session storage params
func (o *AdminReadUserSessionStorageParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminReadUserSessionStorageParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
