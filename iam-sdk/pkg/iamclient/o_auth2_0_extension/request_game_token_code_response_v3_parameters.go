// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0_extension

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

// NewRequestGameTokenCodeResponseV3Params creates a new RequestGameTokenCodeResponseV3Params object
// with the default values initialized.
func NewRequestGameTokenCodeResponseV3Params() *RequestGameTokenCodeResponseV3Params {
	var ()
	return &RequestGameTokenCodeResponseV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewRequestGameTokenCodeResponseV3ParamsWithTimeout creates a new RequestGameTokenCodeResponseV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRequestGameTokenCodeResponseV3ParamsWithTimeout(timeout time.Duration) *RequestGameTokenCodeResponseV3Params {
	var ()
	return &RequestGameTokenCodeResponseV3Params{

		timeout: timeout,
	}
}

// NewRequestGameTokenCodeResponseV3ParamsWithContext creates a new RequestGameTokenCodeResponseV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewRequestGameTokenCodeResponseV3ParamsWithContext(ctx context.Context) *RequestGameTokenCodeResponseV3Params {
	var ()
	return &RequestGameTokenCodeResponseV3Params{

		Context: ctx,
	}
}

// NewRequestGameTokenCodeResponseV3ParamsWithHTTPClient creates a new RequestGameTokenCodeResponseV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRequestGameTokenCodeResponseV3ParamsWithHTTPClient(client *http.Client) *RequestGameTokenCodeResponseV3Params {
	var ()
	return &RequestGameTokenCodeResponseV3Params{
		HTTPClient: client,
	}
}

/*RequestGameTokenCodeResponseV3Params contains all the parameters to send to the API endpoint
for the request game token code response v3 operation typically these are written to a http.Request
*/
type RequestGameTokenCodeResponseV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ClientID
	  Client ID for target namespace

	*/
	ClientID string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the request game token code response v3 params
func (o *RequestGameTokenCodeResponseV3Params) WithTimeout(timeout time.Duration) *RequestGameTokenCodeResponseV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the request game token code response v3 params
func (o *RequestGameTokenCodeResponseV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the request game token code response v3 params
func (o *RequestGameTokenCodeResponseV3Params) WithContext(ctx context.Context) *RequestGameTokenCodeResponseV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the request game token code response v3 params
func (o *RequestGameTokenCodeResponseV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the request game token code response v3 params
func (o *RequestGameTokenCodeResponseV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the request game token code response v3 params
func (o *RequestGameTokenCodeResponseV3Params) WithHTTPClient(client *http.Client) *RequestGameTokenCodeResponseV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the request game token code response v3 params
func (o *RequestGameTokenCodeResponseV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the request game token code response v3 params
func (o *RequestGameTokenCodeResponseV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithClientID adds the clientID to the request game token code response v3 params
func (o *RequestGameTokenCodeResponseV3Params) WithClientID(clientID string) *RequestGameTokenCodeResponseV3Params {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the request game token code response v3 params
func (o *RequestGameTokenCodeResponseV3Params) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WithNamespace adds the namespace to the request game token code response v3 params
func (o *RequestGameTokenCodeResponseV3Params) WithNamespace(namespace string) *RequestGameTokenCodeResponseV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the request game token code response v3 params
func (o *RequestGameTokenCodeResponseV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RequestGameTokenCodeResponseV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form param client_id
	frClientID := o.ClientID
	fClientID := frClientID
	if fClientID != "" {
		if err := r.SetFormParam("client_id", fClientID); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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
