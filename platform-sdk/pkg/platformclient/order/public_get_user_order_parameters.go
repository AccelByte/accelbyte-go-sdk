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

// NewPublicGetUserOrderParams creates a new PublicGetUserOrderParams object
// with the default values initialized.
func NewPublicGetUserOrderParams() *PublicGetUserOrderParams {
	var ()
	return &PublicGetUserOrderParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserOrderParamsWithTimeout creates a new PublicGetUserOrderParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserOrderParamsWithTimeout(timeout time.Duration) *PublicGetUserOrderParams {
	var ()
	return &PublicGetUserOrderParams{

		timeout: timeout,
	}
}

// NewPublicGetUserOrderParamsWithContext creates a new PublicGetUserOrderParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserOrderParamsWithContext(ctx context.Context) *PublicGetUserOrderParams {
	var ()
	return &PublicGetUserOrderParams{

		Context: ctx,
	}
}

// NewPublicGetUserOrderParamsWithHTTPClient creates a new PublicGetUserOrderParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserOrderParamsWithHTTPClient(client *http.Client) *PublicGetUserOrderParams {
	var ()
	return &PublicGetUserOrderParams{
		HTTPClient: client,
	}
}

/*PublicGetUserOrderParams contains all the parameters to send to the API endpoint
for the public get user order operation typically these are written to a http.Request
*/
type PublicGetUserOrderParams struct {

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

// WithTimeout adds the timeout to the public get user order params
func (o *PublicGetUserOrderParams) WithTimeout(timeout time.Duration) *PublicGetUserOrderParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user order params
func (o *PublicGetUserOrderParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user order params
func (o *PublicGetUserOrderParams) WithContext(ctx context.Context) *PublicGetUserOrderParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user order params
func (o *PublicGetUserOrderParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user order params
func (o *PublicGetUserOrderParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user order params
func (o *PublicGetUserOrderParams) WithHTTPClient(client *http.Client) *PublicGetUserOrderParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user order params
func (o *PublicGetUserOrderParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user order params
func (o *PublicGetUserOrderParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetUserOrderParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get user order params
func (o *PublicGetUserOrderParams) WithNamespace(namespace string) *PublicGetUserOrderParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user order params
func (o *PublicGetUserOrderParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithOrderNo adds the orderNo to the public get user order params
func (o *PublicGetUserOrderParams) WithOrderNo(orderNo string) *PublicGetUserOrderParams {
	o.SetOrderNo(orderNo)
	return o
}

// SetOrderNo adds the orderNo to the public get user order params
func (o *PublicGetUserOrderParams) SetOrderNo(orderNo string) {
	o.OrderNo = orderNo
}

// WithUserID adds the userID to the public get user order params
func (o *PublicGetUserOrderParams) WithUserID(userID string) *PublicGetUserOrderParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get user order params
func (o *PublicGetUserOrderParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserOrderParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
