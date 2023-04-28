// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_tickets

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

// NewGetTicketDetailParams creates a new GetTicketDetailParams object
// with the default values initialized.
func NewGetTicketDetailParams() *GetTicketDetailParams {
	var ()
	return &GetTicketDetailParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetTicketDetailParamsWithTimeout creates a new GetTicketDetailParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetTicketDetailParamsWithTimeout(timeout time.Duration) *GetTicketDetailParams {
	var ()
	return &GetTicketDetailParams{

		timeout: timeout,
	}
}

// NewGetTicketDetailParamsWithContext creates a new GetTicketDetailParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetTicketDetailParamsWithContext(ctx context.Context) *GetTicketDetailParams {
	var ()
	return &GetTicketDetailParams{

		Context: ctx,
	}
}

// NewGetTicketDetailParamsWithHTTPClient creates a new GetTicketDetailParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetTicketDetailParamsWithHTTPClient(client *http.Client) *GetTicketDetailParams {
	var ()
	return &GetTicketDetailParams{
		HTTPClient: client,
	}
}

/*GetTicketDetailParams contains all the parameters to send to the API endpoint
for the get ticket detail operation typically these are written to a http.Request
*/
type GetTicketDetailParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*TicketID*/
	TicketID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get ticket detail params
func (o *GetTicketDetailParams) WithTimeout(timeout time.Duration) *GetTicketDetailParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get ticket detail params
func (o *GetTicketDetailParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get ticket detail params
func (o *GetTicketDetailParams) WithContext(ctx context.Context) *GetTicketDetailParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get ticket detail params
func (o *GetTicketDetailParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get ticket detail params
func (o *GetTicketDetailParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get ticket detail params
func (o *GetTicketDetailParams) WithHTTPClient(client *http.Client) *GetTicketDetailParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get ticket detail params
func (o *GetTicketDetailParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get ticket detail params
func (o *GetTicketDetailParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get ticket detail params
func (o *GetTicketDetailParams) WithNamespace(namespace string) *GetTicketDetailParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get ticket detail params
func (o *GetTicketDetailParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTicketID adds the ticketID to the get ticket detail params
func (o *GetTicketDetailParams) WithTicketID(ticketID string) *GetTicketDetailParams {
	o.SetTicketID(ticketID)
	return o
}

// SetTicketID adds the ticketId to the get ticket detail params
func (o *GetTicketDetailParams) SetTicketID(ticketID string) {
	o.TicketID = ticketID
}

// WriteToRequest writes these params to a swagger request
func (o *GetTicketDetailParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param ticketId
	if err := r.SetPathParam("ticketId", o.TicketID); err != nil {
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
