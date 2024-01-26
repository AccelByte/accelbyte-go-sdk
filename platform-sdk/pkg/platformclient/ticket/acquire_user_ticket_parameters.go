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

// NewAcquireUserTicketParams creates a new AcquireUserTicketParams object
// with the default values initialized.
func NewAcquireUserTicketParams() *AcquireUserTicketParams {
	var ()
	return &AcquireUserTicketParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAcquireUserTicketParamsWithTimeout creates a new AcquireUserTicketParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAcquireUserTicketParamsWithTimeout(timeout time.Duration) *AcquireUserTicketParams {
	var ()
	return &AcquireUserTicketParams{

		timeout: timeout,
	}
}

// NewAcquireUserTicketParamsWithContext creates a new AcquireUserTicketParams object
// with the default values initialized, and the ability to set a context for a request
func NewAcquireUserTicketParamsWithContext(ctx context.Context) *AcquireUserTicketParams {
	var ()
	return &AcquireUserTicketParams{

		Context: ctx,
	}
}

// NewAcquireUserTicketParamsWithHTTPClient creates a new AcquireUserTicketParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAcquireUserTicketParamsWithHTTPClient(client *http.Client) *AcquireUserTicketParams {
	var ()
	return &AcquireUserTicketParams{
		HTTPClient: client,
	}
}

/*AcquireUserTicketParams contains all the parameters to send to the API endpoint
for the acquire user ticket operation typically these are written to a http.Request
*/
type AcquireUserTicketParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.TicketAcquireRequest
	/*BoothName*/
	BoothName string
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the acquire user ticket params
func (o *AcquireUserTicketParams) WithTimeout(timeout time.Duration) *AcquireUserTicketParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the acquire user ticket params
func (o *AcquireUserTicketParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the acquire user ticket params
func (o *AcquireUserTicketParams) WithContext(ctx context.Context) *AcquireUserTicketParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the acquire user ticket params
func (o *AcquireUserTicketParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the acquire user ticket params
func (o *AcquireUserTicketParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the acquire user ticket params
func (o *AcquireUserTicketParams) WithHTTPClient(client *http.Client) *AcquireUserTicketParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the acquire user ticket params
func (o *AcquireUserTicketParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the acquire user ticket params
func (o *AcquireUserTicketParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AcquireUserTicketParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the acquire user ticket params
func (o *AcquireUserTicketParams) WithBody(body *platformclientmodels.TicketAcquireRequest) *AcquireUserTicketParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the acquire user ticket params
func (o *AcquireUserTicketParams) SetBody(body *platformclientmodels.TicketAcquireRequest) {
	o.Body = body
}

// WithBoothName adds the boothName to the acquire user ticket params
func (o *AcquireUserTicketParams) WithBoothName(boothName string) *AcquireUserTicketParams {
	o.SetBoothName(boothName)
	return o
}

// SetBoothName adds the boothName to the acquire user ticket params
func (o *AcquireUserTicketParams) SetBoothName(boothName string) {
	o.BoothName = boothName
}

// WithNamespace adds the namespace to the acquire user ticket params
func (o *AcquireUserTicketParams) WithNamespace(namespace string) *AcquireUserTicketParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the acquire user ticket params
func (o *AcquireUserTicketParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the acquire user ticket params
func (o *AcquireUserTicketParams) WithUserID(userID string) *AcquireUserTicketParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the acquire user ticket params
func (o *AcquireUserTicketParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AcquireUserTicketParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
