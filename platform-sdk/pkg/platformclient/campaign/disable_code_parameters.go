// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package campaign

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

// NewDisableCodeParams creates a new DisableCodeParams object
// with the default values initialized.
func NewDisableCodeParams() *DisableCodeParams {
	var ()
	return &DisableCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDisableCodeParamsWithTimeout creates a new DisableCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDisableCodeParamsWithTimeout(timeout time.Duration) *DisableCodeParams {
	var ()
	return &DisableCodeParams{

		timeout: timeout,
	}
}

// NewDisableCodeParamsWithContext creates a new DisableCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewDisableCodeParamsWithContext(ctx context.Context) *DisableCodeParams {
	var ()
	return &DisableCodeParams{

		Context: ctx,
	}
}

// NewDisableCodeParamsWithHTTPClient creates a new DisableCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDisableCodeParamsWithHTTPClient(client *http.Client) *DisableCodeParams {
	var ()
	return &DisableCodeParams{
		HTTPClient: client,
	}
}

/*DisableCodeParams contains all the parameters to send to the API endpoint
for the disable code operation typically these are written to a http.Request
*/
type DisableCodeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Code*/
	Code string
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the disable code params
func (o *DisableCodeParams) WithTimeout(timeout time.Duration) *DisableCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the disable code params
func (o *DisableCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the disable code params
func (o *DisableCodeParams) WithContext(ctx context.Context) *DisableCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the disable code params
func (o *DisableCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the disable code params
func (o *DisableCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the disable code params
func (o *DisableCodeParams) WithHTTPClient(client *http.Client) *DisableCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the disable code params
func (o *DisableCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the disable code params
func (o *DisableCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DisableCodeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCode adds the code to the disable code params
func (o *DisableCodeParams) WithCode(code string) *DisableCodeParams {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the disable code params
func (o *DisableCodeParams) SetCode(code string) {
	o.Code = code
}

// WithNamespace adds the namespace to the disable code params
func (o *DisableCodeParams) WithNamespace(namespace string) *DisableCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the disable code params
func (o *DisableCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DisableCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param code
	if err := r.SetPathParam("code", o.Code); err != nil {
		return err
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
