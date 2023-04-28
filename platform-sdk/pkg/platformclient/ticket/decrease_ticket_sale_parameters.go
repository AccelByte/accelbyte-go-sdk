// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ticket

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewDecreaseTicketSaleParams creates a new DecreaseTicketSaleParams object
// with the default values initialized.
func NewDecreaseTicketSaleParams() *DecreaseTicketSaleParams {
	var ()
	return &DecreaseTicketSaleParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDecreaseTicketSaleParamsWithTimeout creates a new DecreaseTicketSaleParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDecreaseTicketSaleParamsWithTimeout(timeout time.Duration) *DecreaseTicketSaleParams {
	var ()
	return &DecreaseTicketSaleParams{

		timeout: timeout,
	}
}

// NewDecreaseTicketSaleParamsWithContext creates a new DecreaseTicketSaleParams object
// with the default values initialized, and the ability to set a context for a request
func NewDecreaseTicketSaleParamsWithContext(ctx context.Context) *DecreaseTicketSaleParams {
	var ()
	return &DecreaseTicketSaleParams{

		Context: ctx,
	}
}

// NewDecreaseTicketSaleParamsWithHTTPClient creates a new DecreaseTicketSaleParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDecreaseTicketSaleParamsWithHTTPClient(client *http.Client) *DecreaseTicketSaleParams {
	var ()
	return &DecreaseTicketSaleParams{
		HTTPClient: client,
	}
}

/*DecreaseTicketSaleParams contains all the parameters to send to the API endpoint
for the decrease ticket sale operation typically these are written to a http.Request
*/
type DecreaseTicketSaleParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.TicketSaleDecrementRequest
	/*BoothName*/
	BoothName string
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the decrease ticket sale params
func (o *DecreaseTicketSaleParams) WithTimeout(timeout time.Duration) *DecreaseTicketSaleParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the decrease ticket sale params
func (o *DecreaseTicketSaleParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the decrease ticket sale params
func (o *DecreaseTicketSaleParams) WithContext(ctx context.Context) *DecreaseTicketSaleParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the decrease ticket sale params
func (o *DecreaseTicketSaleParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the decrease ticket sale params
func (o *DecreaseTicketSaleParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the decrease ticket sale params
func (o *DecreaseTicketSaleParams) WithHTTPClient(client *http.Client) *DecreaseTicketSaleParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the decrease ticket sale params
func (o *DecreaseTicketSaleParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the decrease ticket sale params
func (o *DecreaseTicketSaleParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the decrease ticket sale params
func (o *DecreaseTicketSaleParams) WithBody(body *platformclientmodels.TicketSaleDecrementRequest) *DecreaseTicketSaleParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the decrease ticket sale params
func (o *DecreaseTicketSaleParams) SetBody(body *platformclientmodels.TicketSaleDecrementRequest) {
	o.Body = body
}

// WithBoothName adds the boothName to the decrease ticket sale params
func (o *DecreaseTicketSaleParams) WithBoothName(boothName string) *DecreaseTicketSaleParams {
	o.SetBoothName(boothName)
	return o
}

// SetBoothName adds the boothName to the decrease ticket sale params
func (o *DecreaseTicketSaleParams) SetBoothName(boothName string) {
	o.BoothName = boothName
}

// WithNamespace adds the namespace to the decrease ticket sale params
func (o *DecreaseTicketSaleParams) WithNamespace(namespace string) *DecreaseTicketSaleParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the decrease ticket sale params
func (o *DecreaseTicketSaleParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DecreaseTicketSaleParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param boothName
	if err := r.SetPathParam("boothName", o.BoothName); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
