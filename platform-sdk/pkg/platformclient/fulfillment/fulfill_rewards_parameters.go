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

// NewFulfillRewardsParams creates a new FulfillRewardsParams object
// with the default values initialized.
func NewFulfillRewardsParams() *FulfillRewardsParams {
	var ()
	return &FulfillRewardsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewFulfillRewardsParamsWithTimeout creates a new FulfillRewardsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewFulfillRewardsParamsWithTimeout(timeout time.Duration) *FulfillRewardsParams {
	var ()
	return &FulfillRewardsParams{

		timeout: timeout,
	}
}

// NewFulfillRewardsParamsWithContext creates a new FulfillRewardsParams object
// with the default values initialized, and the ability to set a context for a request
func NewFulfillRewardsParamsWithContext(ctx context.Context) *FulfillRewardsParams {
	var ()
	return &FulfillRewardsParams{

		Context: ctx,
	}
}

// NewFulfillRewardsParamsWithHTTPClient creates a new FulfillRewardsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewFulfillRewardsParamsWithHTTPClient(client *http.Client) *FulfillRewardsParams {
	var ()
	return &FulfillRewardsParams{
		HTTPClient: client,
	}
}

/*FulfillRewardsParams contains all the parameters to send to the API endpoint
for the fulfill rewards operation typically these are written to a http.Request
*/
type FulfillRewardsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.RewardsRequest
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

// WithTimeout adds the timeout to the fulfill rewards params
func (o *FulfillRewardsParams) WithTimeout(timeout time.Duration) *FulfillRewardsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the fulfill rewards params
func (o *FulfillRewardsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the fulfill rewards params
func (o *FulfillRewardsParams) WithContext(ctx context.Context) *FulfillRewardsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the fulfill rewards params
func (o *FulfillRewardsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the fulfill rewards params
func (o *FulfillRewardsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the fulfill rewards params
func (o *FulfillRewardsParams) WithHTTPClient(client *http.Client) *FulfillRewardsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the fulfill rewards params
func (o *FulfillRewardsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the fulfill rewards params
func (o *FulfillRewardsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *FulfillRewardsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the fulfill rewards params
func (o *FulfillRewardsParams) WithBody(body *platformclientmodels.RewardsRequest) *FulfillRewardsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the fulfill rewards params
func (o *FulfillRewardsParams) SetBody(body *platformclientmodels.RewardsRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the fulfill rewards params
func (o *FulfillRewardsParams) WithNamespace(namespace string) *FulfillRewardsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the fulfill rewards params
func (o *FulfillRewardsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the fulfill rewards params
func (o *FulfillRewardsParams) WithUserID(userID string) *FulfillRewardsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the fulfill rewards params
func (o *FulfillRewardsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *FulfillRewardsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
