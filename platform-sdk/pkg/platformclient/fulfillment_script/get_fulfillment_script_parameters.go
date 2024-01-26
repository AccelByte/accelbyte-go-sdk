// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package fulfillment_script

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

// NewGetFulfillmentScriptParams creates a new GetFulfillmentScriptParams object
// with the default values initialized.
func NewGetFulfillmentScriptParams() *GetFulfillmentScriptParams {
	var ()
	return &GetFulfillmentScriptParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetFulfillmentScriptParamsWithTimeout creates a new GetFulfillmentScriptParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetFulfillmentScriptParamsWithTimeout(timeout time.Duration) *GetFulfillmentScriptParams {
	var ()
	return &GetFulfillmentScriptParams{

		timeout: timeout,
	}
}

// NewGetFulfillmentScriptParamsWithContext creates a new GetFulfillmentScriptParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetFulfillmentScriptParamsWithContext(ctx context.Context) *GetFulfillmentScriptParams {
	var ()
	return &GetFulfillmentScriptParams{

		Context: ctx,
	}
}

// NewGetFulfillmentScriptParamsWithHTTPClient creates a new GetFulfillmentScriptParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetFulfillmentScriptParamsWithHTTPClient(client *http.Client) *GetFulfillmentScriptParams {
	var ()
	return &GetFulfillmentScriptParams{
		HTTPClient: client,
	}
}

/*GetFulfillmentScriptParams contains all the parameters to send to the API endpoint
for the get fulfillment script operation typically these are written to a http.Request
*/
type GetFulfillmentScriptParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ID*/
	ID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get fulfillment script params
func (o *GetFulfillmentScriptParams) WithTimeout(timeout time.Duration) *GetFulfillmentScriptParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get fulfillment script params
func (o *GetFulfillmentScriptParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get fulfillment script params
func (o *GetFulfillmentScriptParams) WithContext(ctx context.Context) *GetFulfillmentScriptParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get fulfillment script params
func (o *GetFulfillmentScriptParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get fulfillment script params
func (o *GetFulfillmentScriptParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get fulfillment script params
func (o *GetFulfillmentScriptParams) WithHTTPClient(client *http.Client) *GetFulfillmentScriptParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get fulfillment script params
func (o *GetFulfillmentScriptParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get fulfillment script params
func (o *GetFulfillmentScriptParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetFulfillmentScriptParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithID adds the idVar to the get fulfillment script params
func (o *GetFulfillmentScriptParams) WithID(idVar string) *GetFulfillmentScriptParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the get fulfillment script params
func (o *GetFulfillmentScriptParams) SetID(idVar string) {
	o.ID = idVar
}

// WriteToRequest writes these params to a swagger request
func (o *GetFulfillmentScriptParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param id
	if err := r.SetPathParam("id", o.ID); err != nil {
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
