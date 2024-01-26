// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment_callback_config

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

// NewGetPaymentCallbackConfigParams creates a new GetPaymentCallbackConfigParams object
// with the default values initialized.
func NewGetPaymentCallbackConfigParams() *GetPaymentCallbackConfigParams {
	var ()
	return &GetPaymentCallbackConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetPaymentCallbackConfigParamsWithTimeout creates a new GetPaymentCallbackConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetPaymentCallbackConfigParamsWithTimeout(timeout time.Duration) *GetPaymentCallbackConfigParams {
	var ()
	return &GetPaymentCallbackConfigParams{

		timeout: timeout,
	}
}

// NewGetPaymentCallbackConfigParamsWithContext creates a new GetPaymentCallbackConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetPaymentCallbackConfigParamsWithContext(ctx context.Context) *GetPaymentCallbackConfigParams {
	var ()
	return &GetPaymentCallbackConfigParams{

		Context: ctx,
	}
}

// NewGetPaymentCallbackConfigParamsWithHTTPClient creates a new GetPaymentCallbackConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetPaymentCallbackConfigParamsWithHTTPClient(client *http.Client) *GetPaymentCallbackConfigParams {
	var ()
	return &GetPaymentCallbackConfigParams{
		HTTPClient: client,
	}
}

/*GetPaymentCallbackConfigParams contains all the parameters to send to the API endpoint
for the get payment callback config operation typically these are written to a http.Request
*/
type GetPaymentCallbackConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get payment callback config params
func (o *GetPaymentCallbackConfigParams) WithTimeout(timeout time.Duration) *GetPaymentCallbackConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get payment callback config params
func (o *GetPaymentCallbackConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get payment callback config params
func (o *GetPaymentCallbackConfigParams) WithContext(ctx context.Context) *GetPaymentCallbackConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get payment callback config params
func (o *GetPaymentCallbackConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get payment callback config params
func (o *GetPaymentCallbackConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get payment callback config params
func (o *GetPaymentCallbackConfigParams) WithHTTPClient(client *http.Client) *GetPaymentCallbackConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get payment callback config params
func (o *GetPaymentCallbackConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get payment callback config params
func (o *GetPaymentCallbackConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetPaymentCallbackConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get payment callback config params
func (o *GetPaymentCallbackConfigParams) WithNamespace(namespace string) *GetPaymentCallbackConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get payment callback config params
func (o *GetPaymentCallbackConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetPaymentCallbackConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
