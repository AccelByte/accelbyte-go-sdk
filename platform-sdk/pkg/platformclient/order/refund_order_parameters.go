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

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewRefundOrderParams creates a new RefundOrderParams object
// with the default values initialized.
func NewRefundOrderParams() *RefundOrderParams {
	var ()
	return &RefundOrderParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRefundOrderParamsWithTimeout creates a new RefundOrderParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRefundOrderParamsWithTimeout(timeout time.Duration) *RefundOrderParams {
	var ()
	return &RefundOrderParams{

		timeout: timeout,
	}
}

// NewRefundOrderParamsWithContext creates a new RefundOrderParams object
// with the default values initialized, and the ability to set a context for a request
func NewRefundOrderParamsWithContext(ctx context.Context) *RefundOrderParams {
	var ()
	return &RefundOrderParams{

		Context: ctx,
	}
}

// NewRefundOrderParamsWithHTTPClient creates a new RefundOrderParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRefundOrderParamsWithHTTPClient(client *http.Client) *RefundOrderParams {
	var ()
	return &RefundOrderParams{
		HTTPClient: client,
	}
}

/*RefundOrderParams contains all the parameters to send to the API endpoint
for the refund order operation typically these are written to a http.Request
*/
type RefundOrderParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.OrderRefundCreate
	/*Namespace*/
	Namespace string
	/*OrderNo*/
	OrderNo string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the refund order params
func (o *RefundOrderParams) WithTimeout(timeout time.Duration) *RefundOrderParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the refund order params
func (o *RefundOrderParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the refund order params
func (o *RefundOrderParams) WithContext(ctx context.Context) *RefundOrderParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the refund order params
func (o *RefundOrderParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the refund order params
func (o *RefundOrderParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the refund order params
func (o *RefundOrderParams) WithHTTPClient(client *http.Client) *RefundOrderParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the refund order params
func (o *RefundOrderParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the refund order params
func (o *RefundOrderParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RefundOrderParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the refund order params
func (o *RefundOrderParams) WithBody(body *platformclientmodels.OrderRefundCreate) *RefundOrderParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the refund order params
func (o *RefundOrderParams) SetBody(body *platformclientmodels.OrderRefundCreate) {
	o.Body = body
}

// WithNamespace adds the namespace to the refund order params
func (o *RefundOrderParams) WithNamespace(namespace string) *RefundOrderParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the refund order params
func (o *RefundOrderParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithOrderNo adds the orderNo to the refund order params
func (o *RefundOrderParams) WithOrderNo(orderNo string) *RefundOrderParams {
	o.SetOrderNo(orderNo)
	return o
}

// SetOrderNo adds the orderNo to the refund order params
func (o *RefundOrderParams) SetOrderNo(orderNo string) {
	o.OrderNo = orderNo
}

// WriteToRequest writes these params to a swagger request
func (o *RefundOrderParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param orderNo
	if err := r.SetPathParam("orderNo", o.OrderNo); err != nil {
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
