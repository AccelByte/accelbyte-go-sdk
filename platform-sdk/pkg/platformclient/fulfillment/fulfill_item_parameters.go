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

// NewFulfillItemParams creates a new FulfillItemParams object
// with the default values initialized.
func NewFulfillItemParams() *FulfillItemParams {
	var ()
	return &FulfillItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewFulfillItemParamsWithTimeout creates a new FulfillItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewFulfillItemParamsWithTimeout(timeout time.Duration) *FulfillItemParams {
	var ()
	return &FulfillItemParams{

		timeout: timeout,
	}
}

// NewFulfillItemParamsWithContext creates a new FulfillItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewFulfillItemParamsWithContext(ctx context.Context) *FulfillItemParams {
	var ()
	return &FulfillItemParams{

		Context: ctx,
	}
}

// NewFulfillItemParamsWithHTTPClient creates a new FulfillItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewFulfillItemParamsWithHTTPClient(client *http.Client) *FulfillItemParams {
	var ()
	return &FulfillItemParams{
		HTTPClient: client,
	}
}

/*FulfillItemParams contains all the parameters to send to the API endpoint
for the fulfill item operation typically these are written to a http.Request
*/
type FulfillItemParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.FulfillmentRequest
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

// WithTimeout adds the timeout to the fulfill item params
func (o *FulfillItemParams) WithTimeout(timeout time.Duration) *FulfillItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the fulfill item params
func (o *FulfillItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the fulfill item params
func (o *FulfillItemParams) WithContext(ctx context.Context) *FulfillItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the fulfill item params
func (o *FulfillItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the fulfill item params
func (o *FulfillItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the fulfill item params
func (o *FulfillItemParams) WithHTTPClient(client *http.Client) *FulfillItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the fulfill item params
func (o *FulfillItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the fulfill item params
func (o *FulfillItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *FulfillItemParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the fulfill item params
func (o *FulfillItemParams) WithBody(body *platformclientmodels.FulfillmentRequest) *FulfillItemParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the fulfill item params
func (o *FulfillItemParams) SetBody(body *platformclientmodels.FulfillmentRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the fulfill item params
func (o *FulfillItemParams) WithNamespace(namespace string) *FulfillItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the fulfill item params
func (o *FulfillItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the fulfill item params
func (o *FulfillItemParams) WithUserID(userID string) *FulfillItemParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the fulfill item params
func (o *FulfillItemParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *FulfillItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
