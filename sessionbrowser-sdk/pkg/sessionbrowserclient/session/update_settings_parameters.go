// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package session

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclientmodels"
)

// NewUpdateSettingsParams creates a new UpdateSettingsParams object
// with the default values initialized.
func NewUpdateSettingsParams() *UpdateSettingsParams {
	var ()
	return &UpdateSettingsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateSettingsParamsWithTimeout creates a new UpdateSettingsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateSettingsParamsWithTimeout(timeout time.Duration) *UpdateSettingsParams {
	var ()
	return &UpdateSettingsParams{

		timeout: timeout,
	}
}

// NewUpdateSettingsParamsWithContext creates a new UpdateSettingsParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateSettingsParamsWithContext(ctx context.Context) *UpdateSettingsParams {
	var ()
	return &UpdateSettingsParams{

		Context: ctx,
	}
}

// NewUpdateSettingsParamsWithHTTPClient creates a new UpdateSettingsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateSettingsParamsWithHTTPClient(client *http.Client) *UpdateSettingsParams {
	var ()
	return &UpdateSettingsParams{
		HTTPClient: client,
	}
}

/*UpdateSettingsParams contains all the parameters to send to the API endpoint
for the update settings operation typically these are written to a http.Request
*/
type UpdateSettingsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body sessionbrowserclientmodels.ModelsUpdateSettingsRequest
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

// WithTimeout adds the timeout to the update settings params
func (o *UpdateSettingsParams) WithTimeout(timeout time.Duration) *UpdateSettingsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update settings params
func (o *UpdateSettingsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update settings params
func (o *UpdateSettingsParams) WithContext(ctx context.Context) *UpdateSettingsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update settings params
func (o *UpdateSettingsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update settings params
func (o *UpdateSettingsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update settings params
func (o *UpdateSettingsParams) WithHTTPClient(client *http.Client) *UpdateSettingsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update settings params
func (o *UpdateSettingsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update settings params
func (o *UpdateSettingsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateSettingsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update settings params
func (o *UpdateSettingsParams) WithBody(body *sessionbrowserclientmodels.ModelsUpdateSettingsRequest) *UpdateSettingsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update settings params
func (o *UpdateSettingsParams) SetBody(body *sessionbrowserclientmodels.ModelsUpdateSettingsRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update settings params
func (o *UpdateSettingsParams) WithNamespace(namespace string) *UpdateSettingsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update settings params
func (o *UpdateSettingsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the update settings params
func (o *UpdateSettingsParams) WithSessionID(sessionID string) *UpdateSettingsParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the update settings params
func (o *UpdateSettingsParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateSettingsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param sessionID
	if err := r.SetPathParam("sessionID", o.SessionID); err != nil {
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
