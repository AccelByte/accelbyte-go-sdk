// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package fulfillment

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

// NewPreCheckFulfillItemParams creates a new PreCheckFulfillItemParams object
// with the default values initialized.
func NewPreCheckFulfillItemParams() *PreCheckFulfillItemParams {
	var ()
	return &PreCheckFulfillItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPreCheckFulfillItemParamsWithTimeout creates a new PreCheckFulfillItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPreCheckFulfillItemParamsWithTimeout(timeout time.Duration) *PreCheckFulfillItemParams {
	var ()
	return &PreCheckFulfillItemParams{

		timeout: timeout,
	}
}

// NewPreCheckFulfillItemParamsWithContext creates a new PreCheckFulfillItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewPreCheckFulfillItemParamsWithContext(ctx context.Context) *PreCheckFulfillItemParams {
	var ()
	return &PreCheckFulfillItemParams{

		Context: ctx,
	}
}

// NewPreCheckFulfillItemParamsWithHTTPClient creates a new PreCheckFulfillItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPreCheckFulfillItemParamsWithHTTPClient(client *http.Client) *PreCheckFulfillItemParams {
	var ()
	return &PreCheckFulfillItemParams{
		HTTPClient: client,
	}
}

/*PreCheckFulfillItemParams contains all the parameters to send to the API endpoint
for the pre check fulfill item operation typically these are written to a http.Request
*/
type PreCheckFulfillItemParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.PreCheckFulfillmentRequest
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

// WithTimeout adds the timeout to the pre check fulfill item params
func (o *PreCheckFulfillItemParams) WithTimeout(timeout time.Duration) *PreCheckFulfillItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the pre check fulfill item params
func (o *PreCheckFulfillItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the pre check fulfill item params
func (o *PreCheckFulfillItemParams) WithContext(ctx context.Context) *PreCheckFulfillItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the pre check fulfill item params
func (o *PreCheckFulfillItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the pre check fulfill item params
func (o *PreCheckFulfillItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the pre check fulfill item params
func (o *PreCheckFulfillItemParams) WithHTTPClient(client *http.Client) *PreCheckFulfillItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the pre check fulfill item params
func (o *PreCheckFulfillItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the pre check fulfill item params
func (o *PreCheckFulfillItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PreCheckFulfillItemParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the pre check fulfill item params
func (o *PreCheckFulfillItemParams) WithBody(body *platformclientmodels.PreCheckFulfillmentRequest) *PreCheckFulfillItemParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the pre check fulfill item params
func (o *PreCheckFulfillItemParams) SetBody(body *platformclientmodels.PreCheckFulfillmentRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the pre check fulfill item params
func (o *PreCheckFulfillItemParams) WithNamespace(namespace string) *PreCheckFulfillItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the pre check fulfill item params
func (o *PreCheckFulfillItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the pre check fulfill item params
func (o *PreCheckFulfillItemParams) WithUserID(userID string) *PreCheckFulfillItemParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the pre check fulfill item params
func (o *PreCheckFulfillItemParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PreCheckFulfillItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
