// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package server

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

// NewShutdownServerParams creates a new ShutdownServerParams object
// with the default values initialized.
func NewShutdownServerParams() *ShutdownServerParams {
	var ()
	return &ShutdownServerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewShutdownServerParamsWithTimeout creates a new ShutdownServerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewShutdownServerParamsWithTimeout(timeout time.Duration) *ShutdownServerParams {
	var ()
	return &ShutdownServerParams{

		timeout: timeout,
	}
}

// NewShutdownServerParamsWithContext creates a new ShutdownServerParams object
// with the default values initialized, and the ability to set a context for a request
func NewShutdownServerParamsWithContext(ctx context.Context) *ShutdownServerParams {
	var ()
	return &ShutdownServerParams{

		Context: ctx,
	}
}

// NewShutdownServerParamsWithHTTPClient creates a new ShutdownServerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewShutdownServerParamsWithHTTPClient(client *http.Client) *ShutdownServerParams {
	var ()
	return &ShutdownServerParams{
		HTTPClient: client,
	}
}

/*ShutdownServerParams contains all the parameters to send to the API endpoint
for the shutdown server operation typically these are written to a http.Request
*/
type ShutdownServerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *dsmcclientmodels.ModelsShutdownServerRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the shutdown server params
func (o *ShutdownServerParams) WithTimeout(timeout time.Duration) *ShutdownServerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the shutdown server params
func (o *ShutdownServerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the shutdown server params
func (o *ShutdownServerParams) WithContext(ctx context.Context) *ShutdownServerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the shutdown server params
func (o *ShutdownServerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the shutdown server params
func (o *ShutdownServerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the shutdown server params
func (o *ShutdownServerParams) WithHTTPClient(client *http.Client) *ShutdownServerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the shutdown server params
func (o *ShutdownServerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the shutdown server params
func (o *ShutdownServerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ShutdownServerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the shutdown server params
func (o *ShutdownServerParams) WithBody(body *dsmcclientmodels.ModelsShutdownServerRequest) *ShutdownServerParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the shutdown server params
func (o *ShutdownServerParams) SetBody(body *dsmcclientmodels.ModelsShutdownServerRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the shutdown server params
func (o *ShutdownServerParams) WithNamespace(namespace string) *ShutdownServerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the shutdown server params
func (o *ShutdownServerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ShutdownServerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
