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
)

// NewGetTotalActiveSessionParams creates a new GetTotalActiveSessionParams object
// with the default values initialized.
func NewGetTotalActiveSessionParams() *GetTotalActiveSessionParams {
	var ()
	return &GetTotalActiveSessionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetTotalActiveSessionParamsWithTimeout creates a new GetTotalActiveSessionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetTotalActiveSessionParamsWithTimeout(timeout time.Duration) *GetTotalActiveSessionParams {
	var ()
	return &GetTotalActiveSessionParams{

		timeout: timeout,
	}
}

// NewGetTotalActiveSessionParamsWithContext creates a new GetTotalActiveSessionParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetTotalActiveSessionParamsWithContext(ctx context.Context) *GetTotalActiveSessionParams {
	var ()
	return &GetTotalActiveSessionParams{

		Context: ctx,
	}
}

// NewGetTotalActiveSessionParamsWithHTTPClient creates a new GetTotalActiveSessionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetTotalActiveSessionParamsWithHTTPClient(client *http.Client) *GetTotalActiveSessionParams {
	var ()
	return &GetTotalActiveSessionParams{
		HTTPClient: client,
	}
}

/*GetTotalActiveSessionParams contains all the parameters to send to the API endpoint
for the get total active session operation typically these are written to a http.Request
*/
type GetTotalActiveSessionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*SessionType
	  session type to query, accept 'dedicated' or 'p2p'

	*/
	SessionType *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get total active session params
func (o *GetTotalActiveSessionParams) WithTimeout(timeout time.Duration) *GetTotalActiveSessionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get total active session params
func (o *GetTotalActiveSessionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get total active session params
func (o *GetTotalActiveSessionParams) WithContext(ctx context.Context) *GetTotalActiveSessionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get total active session params
func (o *GetTotalActiveSessionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get total active session params
func (o *GetTotalActiveSessionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get total active session params
func (o *GetTotalActiveSessionParams) WithHTTPClient(client *http.Client) *GetTotalActiveSessionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get total active session params
func (o *GetTotalActiveSessionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get total active session params
func (o *GetTotalActiveSessionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get total active session params
func (o *GetTotalActiveSessionParams) WithNamespace(namespace string) *GetTotalActiveSessionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get total active session params
func (o *GetTotalActiveSessionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionType adds the sessionType to the get total active session params
func (o *GetTotalActiveSessionParams) WithSessionType(sessionType *string) *GetTotalActiveSessionParams {
	o.SetSessionType(sessionType)
	return o
}

// SetSessionType adds the sessionType to the get total active session params
func (o *GetTotalActiveSessionParams) SetSessionType(sessionType *string) {
	o.SessionType = sessionType
}

// WriteToRequest writes these params to a swagger request
func (o *GetTotalActiveSessionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.SessionType != nil {

		// query param session_type
		var qrSessionType string
		if o.SessionType != nil {
			qrSessionType = *o.SessionType
		}
		qSessionType := qrSessionType
		if qSessionType != "" {
			if err := r.SetQueryParam("session_type", qSessionType); err != nil {
				return err
			}
		}

	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
