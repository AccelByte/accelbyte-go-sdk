// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment_station

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

// NewPublicGetQRCodeParams creates a new PublicGetQRCodeParams object
// with the default values initialized.
func NewPublicGetQRCodeParams() *PublicGetQRCodeParams {
	var ()
	return &PublicGetQRCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetQRCodeParamsWithTimeout creates a new PublicGetQRCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetQRCodeParamsWithTimeout(timeout time.Duration) *PublicGetQRCodeParams {
	var ()
	return &PublicGetQRCodeParams{

		timeout: timeout,
	}
}

// NewPublicGetQRCodeParamsWithContext creates a new PublicGetQRCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetQRCodeParamsWithContext(ctx context.Context) *PublicGetQRCodeParams {
	var ()
	return &PublicGetQRCodeParams{

		Context: ctx,
	}
}

// NewPublicGetQRCodeParamsWithHTTPClient creates a new PublicGetQRCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetQRCodeParamsWithHTTPClient(client *http.Client) *PublicGetQRCodeParams {
	var ()
	return &PublicGetQRCodeParams{
		HTTPClient: client,
	}
}

/*PublicGetQRCodeParams contains all the parameters to send to the API endpoint
for the public get qr code operation typically these are written to a http.Request
*/
type PublicGetQRCodeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Code*/
	Code string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get qr code params
func (o *PublicGetQRCodeParams) WithTimeout(timeout time.Duration) *PublicGetQRCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get qr code params
func (o *PublicGetQRCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get qr code params
func (o *PublicGetQRCodeParams) WithContext(ctx context.Context) *PublicGetQRCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get qr code params
func (o *PublicGetQRCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get qr code params
func (o *PublicGetQRCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get qr code params
func (o *PublicGetQRCodeParams) WithHTTPClient(client *http.Client) *PublicGetQRCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get qr code params
func (o *PublicGetQRCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get qr code params
func (o *PublicGetQRCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetQRCodeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get qr code params
func (o *PublicGetQRCodeParams) WithNamespace(namespace string) *PublicGetQRCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get qr code params
func (o *PublicGetQRCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCode adds the code to the public get qr code params
func (o *PublicGetQRCodeParams) WithCode(code string) *PublicGetQRCodeParams {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the public get qr code params
func (o *PublicGetQRCodeParams) SetCode(code string) {
	o.Code = code
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetQRCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param code
	qrCode := o.Code
	qCode := qrCode
	if qCode != "" {
		if err := r.SetQueryParam("code", qCode); err != nil {
			return err
		}
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
