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

// NewFulfillRewardsV2Params creates a new FulfillRewardsV2Params object
// with the default values initialized.
func NewFulfillRewardsV2Params() *FulfillRewardsV2Params {
	var ()
	return &FulfillRewardsV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewFulfillRewardsV2ParamsWithTimeout creates a new FulfillRewardsV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewFulfillRewardsV2ParamsWithTimeout(timeout time.Duration) *FulfillRewardsV2Params {
	var ()
	return &FulfillRewardsV2Params{

		timeout: timeout,
	}
}

// NewFulfillRewardsV2ParamsWithContext creates a new FulfillRewardsV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewFulfillRewardsV2ParamsWithContext(ctx context.Context) *FulfillRewardsV2Params {
	var ()
	return &FulfillRewardsV2Params{

		Context: ctx,
	}
}

// NewFulfillRewardsV2ParamsWithHTTPClient creates a new FulfillRewardsV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewFulfillRewardsV2ParamsWithHTTPClient(client *http.Client) *FulfillRewardsV2Params {
	var ()
	return &FulfillRewardsV2Params{
		HTTPClient: client,
	}
}

/*FulfillRewardsV2Params contains all the parameters to send to the API endpoint
for the fulfill rewards v2 operation typically these are written to a http.Request
*/
type FulfillRewardsV2Params struct {

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

// WithTimeout adds the timeout to the fulfill rewards v2 params
func (o *FulfillRewardsV2Params) WithTimeout(timeout time.Duration) *FulfillRewardsV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the fulfill rewards v2 params
func (o *FulfillRewardsV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the fulfill rewards v2 params
func (o *FulfillRewardsV2Params) WithContext(ctx context.Context) *FulfillRewardsV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the fulfill rewards v2 params
func (o *FulfillRewardsV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the fulfill rewards v2 params
func (o *FulfillRewardsV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the fulfill rewards v2 params
func (o *FulfillRewardsV2Params) WithHTTPClient(client *http.Client) *FulfillRewardsV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the fulfill rewards v2 params
func (o *FulfillRewardsV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the fulfill rewards v2 params
func (o *FulfillRewardsV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *FulfillRewardsV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the fulfill rewards v2 params
func (o *FulfillRewardsV2Params) WithBody(body *platformclientmodels.RewardsRequest) *FulfillRewardsV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the fulfill rewards v2 params
func (o *FulfillRewardsV2Params) SetBody(body *platformclientmodels.RewardsRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the fulfill rewards v2 params
func (o *FulfillRewardsV2Params) WithNamespace(namespace string) *FulfillRewardsV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the fulfill rewards v2 params
func (o *FulfillRewardsV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the fulfill rewards v2 params
func (o *FulfillRewardsV2Params) WithUserID(userID string) *FulfillRewardsV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the fulfill rewards v2 params
func (o *FulfillRewardsV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *FulfillRewardsV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
