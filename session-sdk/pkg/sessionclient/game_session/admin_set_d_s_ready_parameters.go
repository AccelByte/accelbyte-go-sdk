// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_session

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

// NewAdminSetDSReadyParams creates a new AdminSetDSReadyParams object
// with the default values initialized.
func NewAdminSetDSReadyParams() *AdminSetDSReadyParams {
	var ()
	return &AdminSetDSReadyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminSetDSReadyParamsWithTimeout creates a new AdminSetDSReadyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminSetDSReadyParamsWithTimeout(timeout time.Duration) *AdminSetDSReadyParams {
	var ()
	return &AdminSetDSReadyParams{

		timeout: timeout,
	}
}

// NewAdminSetDSReadyParamsWithContext creates a new AdminSetDSReadyParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminSetDSReadyParamsWithContext(ctx context.Context) *AdminSetDSReadyParams {
	var ()
	return &AdminSetDSReadyParams{

		Context: ctx,
	}
}

// NewAdminSetDSReadyParamsWithHTTPClient creates a new AdminSetDSReadyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminSetDSReadyParamsWithHTTPClient(client *http.Client) *AdminSetDSReadyParams {
	var ()
	return &AdminSetDSReadyParams{
		HTTPClient: client,
	}
}

/*AdminSetDSReadyParams contains all the parameters to send to the API endpoint
for the admin set ds ready operation typically these are written to a http.Request
*/
type AdminSetDSReadyParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionclientmodels.ApimodelsSetDSReadyRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*SessionID
	  session ID

	*/
	SessionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin set ds ready params
func (o *AdminSetDSReadyParams) WithTimeout(timeout time.Duration) *AdminSetDSReadyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin set ds ready params
func (o *AdminSetDSReadyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin set ds ready params
func (o *AdminSetDSReadyParams) WithContext(ctx context.Context) *AdminSetDSReadyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin set ds ready params
func (o *AdminSetDSReadyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin set ds ready params
func (o *AdminSetDSReadyParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin set ds ready params
func (o *AdminSetDSReadyParams) WithHTTPClient(client *http.Client) *AdminSetDSReadyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin set ds ready params
func (o *AdminSetDSReadyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin set ds ready params
func (o *AdminSetDSReadyParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminSetDSReadyParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin set ds ready params
func (o *AdminSetDSReadyParams) WithBody(body *sessionclientmodels.ApimodelsSetDSReadyRequest) *AdminSetDSReadyParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin set ds ready params
func (o *AdminSetDSReadyParams) SetBody(body *sessionclientmodels.ApimodelsSetDSReadyRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin set ds ready params
func (o *AdminSetDSReadyParams) WithNamespace(namespace string) *AdminSetDSReadyParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin set ds ready params
func (o *AdminSetDSReadyParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the admin set ds ready params
func (o *AdminSetDSReadyParams) WithSessionID(sessionID string) *AdminSetDSReadyParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the admin set ds ready params
func (o *AdminSetDSReadyParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminSetDSReadyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
