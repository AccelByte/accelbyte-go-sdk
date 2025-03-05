// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

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

// NewAdminRefundIAPOrderParams creates a new AdminRefundIAPOrderParams object
// with the default values initialized.
func NewAdminRefundIAPOrderParams() *AdminRefundIAPOrderParams {
	var ()
	return &AdminRefundIAPOrderParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminRefundIAPOrderParamsWithTimeout creates a new AdminRefundIAPOrderParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminRefundIAPOrderParamsWithTimeout(timeout time.Duration) *AdminRefundIAPOrderParams {
	var ()
	return &AdminRefundIAPOrderParams{

		timeout: timeout,
	}
}

// NewAdminRefundIAPOrderParamsWithContext creates a new AdminRefundIAPOrderParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminRefundIAPOrderParamsWithContext(ctx context.Context) *AdminRefundIAPOrderParams {
	var ()
	return &AdminRefundIAPOrderParams{

		Context: ctx,
	}
}

// NewAdminRefundIAPOrderParamsWithHTTPClient creates a new AdminRefundIAPOrderParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminRefundIAPOrderParamsWithHTTPClient(client *http.Client) *AdminRefundIAPOrderParams {
	var ()
	return &AdminRefundIAPOrderParams{
		HTTPClient: client,
	}
}

/*AdminRefundIAPOrderParams contains all the parameters to send to the API endpoint
for the admin refund iap order operation typically these are written to a http.Request
*/
type AdminRefundIAPOrderParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*IAPOrderNo*/
	IAPOrderNo string
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin refund iap order params
func (o *AdminRefundIAPOrderParams) WithTimeout(timeout time.Duration) *AdminRefundIAPOrderParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin refund iap order params
func (o *AdminRefundIAPOrderParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin refund iap order params
func (o *AdminRefundIAPOrderParams) WithContext(ctx context.Context) *AdminRefundIAPOrderParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin refund iap order params
func (o *AdminRefundIAPOrderParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin refund iap order params
func (o *AdminRefundIAPOrderParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin refund iap order params
func (o *AdminRefundIAPOrderParams) WithHTTPClient(client *http.Client) *AdminRefundIAPOrderParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin refund iap order params
func (o *AdminRefundIAPOrderParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin refund iap order params
func (o *AdminRefundIAPOrderParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminRefundIAPOrderParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithIAPOrderNo adds the iAPOrderNo to the admin refund iap order params
func (o *AdminRefundIAPOrderParams) WithIAPOrderNo(iAPOrderNo string) *AdminRefundIAPOrderParams {
	o.SetIAPOrderNo(iAPOrderNo)
	return o
}

// SetIAPOrderNo adds the iapOrderNo to the admin refund iap order params
func (o *AdminRefundIAPOrderParams) SetIAPOrderNo(iAPOrderNo string) {
	o.IAPOrderNo = iAPOrderNo
}

// WithNamespace adds the namespace to the admin refund iap order params
func (o *AdminRefundIAPOrderParams) WithNamespace(namespace string) *AdminRefundIAPOrderParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin refund iap order params
func (o *AdminRefundIAPOrderParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminRefundIAPOrderParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param iapOrderNo
	if err := r.SetPathParam("iapOrderNo", o.IAPOrderNo); err != nil {
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
