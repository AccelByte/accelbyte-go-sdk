// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package order

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

// NewFulfillUserOrderParams creates a new FulfillUserOrderParams object
// with the default values initialized.
func NewFulfillUserOrderParams() *FulfillUserOrderParams {
	var ()
	return &FulfillUserOrderParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewFulfillUserOrderParamsWithTimeout creates a new FulfillUserOrderParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewFulfillUserOrderParamsWithTimeout(timeout time.Duration) *FulfillUserOrderParams {
	var ()
	return &FulfillUserOrderParams{

		timeout: timeout,
	}
}

// NewFulfillUserOrderParamsWithContext creates a new FulfillUserOrderParams object
// with the default values initialized, and the ability to set a context for a request
func NewFulfillUserOrderParamsWithContext(ctx context.Context) *FulfillUserOrderParams {
	var ()
	return &FulfillUserOrderParams{

		Context: ctx,
	}
}

// NewFulfillUserOrderParamsWithHTTPClient creates a new FulfillUserOrderParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewFulfillUserOrderParamsWithHTTPClient(client *http.Client) *FulfillUserOrderParams {
	var ()
	return &FulfillUserOrderParams{
		HTTPClient: client,
	}
}

/*FulfillUserOrderParams contains all the parameters to send to the API endpoint
for the fulfill user order operation typically these are written to a http.Request
*/
type FulfillUserOrderParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*OrderNo*/
	OrderNo string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the fulfill user order params
func (o *FulfillUserOrderParams) WithTimeout(timeout time.Duration) *FulfillUserOrderParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the fulfill user order params
func (o *FulfillUserOrderParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the fulfill user order params
func (o *FulfillUserOrderParams) WithContext(ctx context.Context) *FulfillUserOrderParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the fulfill user order params
func (o *FulfillUserOrderParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the fulfill user order params
func (o *FulfillUserOrderParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the fulfill user order params
func (o *FulfillUserOrderParams) WithHTTPClient(client *http.Client) *FulfillUserOrderParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the fulfill user order params
func (o *FulfillUserOrderParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the fulfill user order params
func (o *FulfillUserOrderParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *FulfillUserOrderParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the fulfill user order params
func (o *FulfillUserOrderParams) WithNamespace(namespace string) *FulfillUserOrderParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the fulfill user order params
func (o *FulfillUserOrderParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithOrderNo adds the orderNo to the fulfill user order params
func (o *FulfillUserOrderParams) WithOrderNo(orderNo string) *FulfillUserOrderParams {
	o.SetOrderNo(orderNo)
	return o
}

// SetOrderNo adds the orderNo to the fulfill user order params
func (o *FulfillUserOrderParams) SetOrderNo(orderNo string) {
	o.OrderNo = orderNo
}

// WithUserID adds the userID to the fulfill user order params
func (o *FulfillUserOrderParams) WithUserID(userID string) *FulfillUserOrderParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the fulfill user order params
func (o *FulfillUserOrderParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *FulfillUserOrderParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param orderNo
	if err := r.SetPathParam("orderNo", o.OrderNo); err != nil {
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
