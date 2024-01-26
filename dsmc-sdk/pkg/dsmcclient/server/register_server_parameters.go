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

// NewRegisterServerParams creates a new RegisterServerParams object
// with the default values initialized.
func NewRegisterServerParams() *RegisterServerParams {
	var ()
	return &RegisterServerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRegisterServerParamsWithTimeout creates a new RegisterServerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRegisterServerParamsWithTimeout(timeout time.Duration) *RegisterServerParams {
	var ()
	return &RegisterServerParams{

		timeout: timeout,
	}
}

// NewRegisterServerParamsWithContext creates a new RegisterServerParams object
// with the default values initialized, and the ability to set a context for a request
func NewRegisterServerParamsWithContext(ctx context.Context) *RegisterServerParams {
	var ()
	return &RegisterServerParams{

		Context: ctx,
	}
}

// NewRegisterServerParamsWithHTTPClient creates a new RegisterServerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRegisterServerParamsWithHTTPClient(client *http.Client) *RegisterServerParams {
	var ()
	return &RegisterServerParams{
		HTTPClient: client,
	}
}

/*RegisterServerParams contains all the parameters to send to the API endpoint
for the register server operation typically these are written to a http.Request
*/
type RegisterServerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *dsmcclientmodels.ModelsRegisterServerRequest
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

// WithTimeout adds the timeout to the register server params
func (o *RegisterServerParams) WithTimeout(timeout time.Duration) *RegisterServerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the register server params
func (o *RegisterServerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the register server params
func (o *RegisterServerParams) WithContext(ctx context.Context) *RegisterServerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the register server params
func (o *RegisterServerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the register server params
func (o *RegisterServerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the register server params
func (o *RegisterServerParams) WithHTTPClient(client *http.Client) *RegisterServerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the register server params
func (o *RegisterServerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the register server params
func (o *RegisterServerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RegisterServerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the register server params
func (o *RegisterServerParams) WithBody(body *dsmcclientmodels.ModelsRegisterServerRequest) *RegisterServerParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the register server params
func (o *RegisterServerParams) SetBody(body *dsmcclientmodels.ModelsRegisterServerRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the register server params
func (o *RegisterServerParams) WithNamespace(namespace string) *RegisterServerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the register server params
func (o *RegisterServerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RegisterServerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
