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

// NewEnableCodeParams creates a new EnableCodeParams object
// with the default values initialized.
func NewEnableCodeParams() *EnableCodeParams {
	var ()
	return &EnableCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewEnableCodeParamsWithTimeout creates a new EnableCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewEnableCodeParamsWithTimeout(timeout time.Duration) *EnableCodeParams {
	var ()
	return &EnableCodeParams{

		timeout: timeout,
	}
}

// NewEnableCodeParamsWithContext creates a new EnableCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewEnableCodeParamsWithContext(ctx context.Context) *EnableCodeParams {
	var ()
	return &EnableCodeParams{

		Context: ctx,
	}
}

// NewEnableCodeParamsWithHTTPClient creates a new EnableCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewEnableCodeParamsWithHTTPClient(client *http.Client) *EnableCodeParams {
	var ()
	return &EnableCodeParams{
		HTTPClient: client,
	}
}

/*EnableCodeParams contains all the parameters to send to the API endpoint
for the enable code operation typically these are written to a http.Request
*/
type EnableCodeParams struct {

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

// WithTimeout adds the timeout to the enable code params
func (o *EnableCodeParams) WithTimeout(timeout time.Duration) *EnableCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the enable code params
func (o *EnableCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the enable code params
func (o *EnableCodeParams) WithContext(ctx context.Context) *EnableCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the enable code params
func (o *EnableCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the enable code params
func (o *EnableCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the enable code params
func (o *EnableCodeParams) WithHTTPClient(client *http.Client) *EnableCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the enable code params
func (o *EnableCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the enable code params
func (o *EnableCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *EnableCodeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCode adds the code to the enable code params
func (o *EnableCodeParams) WithCode(code string) *EnableCodeParams {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the enable code params
func (o *EnableCodeParams) SetCode(code string) {
	o.Code = code
}

// WithNamespace adds the namespace to the enable code params
func (o *EnableCodeParams) WithNamespace(namespace string) *EnableCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the enable code params
func (o *EnableCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *EnableCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
