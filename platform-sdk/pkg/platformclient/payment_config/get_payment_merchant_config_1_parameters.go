// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment_config

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

// NewGetPaymentMerchantConfig1Params creates a new GetPaymentMerchantConfig1Params object
// with the default values initialized.
func NewGetPaymentMerchantConfig1Params() *GetPaymentMerchantConfig1Params {
	var ()
	return &GetPaymentMerchantConfig1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetPaymentMerchantConfig1ParamsWithTimeout creates a new GetPaymentMerchantConfig1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetPaymentMerchantConfig1ParamsWithTimeout(timeout time.Duration) *GetPaymentMerchantConfig1Params {
	var ()
	return &GetPaymentMerchantConfig1Params{

		timeout: timeout,
	}
}

// NewGetPaymentMerchantConfig1ParamsWithContext creates a new GetPaymentMerchantConfig1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetPaymentMerchantConfig1ParamsWithContext(ctx context.Context) *GetPaymentMerchantConfig1Params {
	var ()
	return &GetPaymentMerchantConfig1Params{

		Context: ctx,
	}
}

// NewGetPaymentMerchantConfig1ParamsWithHTTPClient creates a new GetPaymentMerchantConfig1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetPaymentMerchantConfig1ParamsWithHTTPClient(client *http.Client) *GetPaymentMerchantConfig1Params {
	var ()
	return &GetPaymentMerchantConfig1Params{
		HTTPClient: client,
	}
}

/*GetPaymentMerchantConfig1Params contains all the parameters to send to the API endpoint
for the get payment merchant config 1 operation typically these are written to a http.Request
*/
type GetPaymentMerchantConfig1Params struct {

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

// WithTimeout adds the timeout to the get payment merchant config 1 params
func (o *GetPaymentMerchantConfig1Params) WithTimeout(timeout time.Duration) *GetPaymentMerchantConfig1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get payment merchant config 1 params
func (o *GetPaymentMerchantConfig1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get payment merchant config 1 params
func (o *GetPaymentMerchantConfig1Params) WithContext(ctx context.Context) *GetPaymentMerchantConfig1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get payment merchant config 1 params
func (o *GetPaymentMerchantConfig1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get payment merchant config 1 params
func (o *GetPaymentMerchantConfig1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get payment merchant config 1 params
func (o *GetPaymentMerchantConfig1Params) WithHTTPClient(client *http.Client) *GetPaymentMerchantConfig1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get payment merchant config 1 params
func (o *GetPaymentMerchantConfig1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get payment merchant config 1 params
func (o *GetPaymentMerchantConfig1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetPaymentMerchantConfig1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithID adds the idVar to the get payment merchant config 1 params
func (o *GetPaymentMerchantConfig1Params) WithID(idVar string) *GetPaymentMerchantConfig1Params {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the get payment merchant config 1 params
func (o *GetPaymentMerchantConfig1Params) SetID(idVar string) {
	o.ID = idVar
}

// WriteToRequest writes these params to a swagger request
func (o *GetPaymentMerchantConfig1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
