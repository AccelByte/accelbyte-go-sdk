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

// NewGetRewardParams creates a new GetRewardParams object
// with the default values initialized.
func NewGetRewardParams() *GetRewardParams {
	var ()
	return &GetRewardParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetRewardParamsWithTimeout creates a new GetRewardParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetRewardParamsWithTimeout(timeout time.Duration) *GetRewardParams {
	var ()
	return &GetRewardParams{

		timeout: timeout,
	}
}

// NewGetRewardParamsWithContext creates a new GetRewardParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetRewardParamsWithContext(ctx context.Context) *GetRewardParams {
	var ()
	return &GetRewardParams{

		Context: ctx,
	}
}

// NewGetRewardParamsWithHTTPClient creates a new GetRewardParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetRewardParamsWithHTTPClient(client *http.Client) *GetRewardParams {
	var ()
	return &GetRewardParams{
		HTTPClient: client,
	}
}

/*GetRewardParams contains all the parameters to send to the API endpoint
for the get reward operation typically these are written to a http.Request
*/
type GetRewardParams struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get reward params
func (o *GetRewardParams) WithTimeout(timeout time.Duration) *GetRewardParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get reward params
func (o *GetRewardParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get reward params
func (o *GetRewardParams) WithContext(ctx context.Context) *GetRewardParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get reward params
func (o *GetRewardParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get reward params
func (o *GetRewardParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get reward params
func (o *GetRewardParams) WithHTTPClient(client *http.Client) *GetRewardParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get reward params
func (o *GetRewardParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get reward params
func (o *GetRewardParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetRewardParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get reward params
func (o *GetRewardParams) WithNamespace(namespace string) *GetRewardParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get reward params
func (o *GetRewardParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRewardID adds the rewardID to the get reward params
func (o *GetRewardParams) WithRewardID(rewardID string) *GetRewardParams {
	o.SetRewardID(rewardID)
	return o
}

// SetRewardID adds the rewardId to the get reward params
func (o *GetRewardParams) SetRewardID(rewardID string) {
	o.RewardID = rewardID
}

// WriteToRequest writes these params to a swagger request
func (o *GetRewardParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
