// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reward

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

// NewGetReward1Params creates a new GetReward1Params object
// with the default values initialized.
func NewGetReward1Params() *GetReward1Params {
	var ()
	return &GetReward1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetReward1ParamsWithTimeout creates a new GetReward1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetReward1ParamsWithTimeout(timeout time.Duration) *GetReward1Params {
	var ()
	return &GetReward1Params{

		timeout: timeout,
	}
}

// NewGetReward1ParamsWithContext creates a new GetReward1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetReward1ParamsWithContext(ctx context.Context) *GetReward1Params {
	var ()
	return &GetReward1Params{

		Context: ctx,
	}
}

// NewGetReward1ParamsWithHTTPClient creates a new GetReward1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetReward1ParamsWithHTTPClient(client *http.Client) *GetReward1Params {
	var ()
	return &GetReward1Params{
		HTTPClient: client,
	}
}

/*GetReward1Params contains all the parameters to send to the API endpoint
for the get reward 1 operation typically these are written to a http.Request
*/
type GetReward1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*RewardID*/
	RewardID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get reward 1 params
func (o *GetReward1Params) WithTimeout(timeout time.Duration) *GetReward1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get reward 1 params
func (o *GetReward1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get reward 1 params
func (o *GetReward1Params) WithContext(ctx context.Context) *GetReward1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get reward 1 params
func (o *GetReward1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get reward 1 params
func (o *GetReward1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get reward 1 params
func (o *GetReward1Params) WithHTTPClient(client *http.Client) *GetReward1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get reward 1 params
func (o *GetReward1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get reward 1 params
func (o *GetReward1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get reward 1 params
func (o *GetReward1Params) WithNamespace(namespace string) *GetReward1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get reward 1 params
func (o *GetReward1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRewardID adds the rewardID to the get reward 1 params
func (o *GetReward1Params) WithRewardID(rewardID string) *GetReward1Params {
	o.SetRewardID(rewardID)
	return o
}

// SetRewardID adds the rewardId to the get reward 1 params
func (o *GetReward1Params) SetRewardID(rewardID string) {
	o.RewardID = rewardID
}

// WriteToRequest writes these params to a swagger request
func (o *GetReward1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param rewardId
	if err := r.SetPathParam("rewardId", o.RewardID); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
