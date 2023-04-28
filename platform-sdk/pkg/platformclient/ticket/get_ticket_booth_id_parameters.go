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
)

// NewGetTicketBoothIDParams creates a new GetTicketBoothIDParams object
// with the default values initialized.
func NewGetTicketBoothIDParams() *GetTicketBoothIDParams {
	var ()
	return &GetTicketBoothIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetTicketBoothIDParamsWithTimeout creates a new GetTicketBoothIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetTicketBoothIDParamsWithTimeout(timeout time.Duration) *GetTicketBoothIDParams {
	var ()
	return &GetTicketBoothIDParams{

		timeout: timeout,
	}
}

// NewGetTicketBoothIDParamsWithContext creates a new GetTicketBoothIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetTicketBoothIDParamsWithContext(ctx context.Context) *GetTicketBoothIDParams {
	var ()
	return &GetTicketBoothIDParams{

		Context: ctx,
	}
}

// NewGetTicketBoothIDParamsWithHTTPClient creates a new GetTicketBoothIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetTicketBoothIDParamsWithHTTPClient(client *http.Client) *GetTicketBoothIDParams {
	var ()
	return &GetTicketBoothIDParams{
		HTTPClient: client,
	}
}

/*GetTicketBoothIDParams contains all the parameters to send to the API endpoint
for the get ticket booth id operation typically these are written to a http.Request
*/
type GetTicketBoothIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*BoothName*/
	BoothName string
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get ticket booth id params
func (o *GetTicketBoothIDParams) WithTimeout(timeout time.Duration) *GetTicketBoothIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get ticket booth id params
func (o *GetTicketBoothIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get ticket booth id params
func (o *GetTicketBoothIDParams) WithContext(ctx context.Context) *GetTicketBoothIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get ticket booth id params
func (o *GetTicketBoothIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get ticket booth id params
func (o *GetTicketBoothIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get ticket booth id params
func (o *GetTicketBoothIDParams) WithHTTPClient(client *http.Client) *GetTicketBoothIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get ticket booth id params
func (o *GetTicketBoothIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get ticket booth id params
func (o *GetTicketBoothIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBoothName adds the boothName to the get ticket booth id params
func (o *GetTicketBoothIDParams) WithBoothName(boothName string) *GetTicketBoothIDParams {
	o.SetBoothName(boothName)
	return o
}

// SetBoothName adds the boothName to the get ticket booth id params
func (o *GetTicketBoothIDParams) SetBoothName(boothName string) {
	o.BoothName = boothName
}

// WithNamespace adds the namespace to the get ticket booth id params
func (o *GetTicketBoothIDParams) WithNamespace(namespace string) *GetTicketBoothIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get ticket booth id params
func (o *GetTicketBoothIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetTicketBoothIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
