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

// NewQueryRewardsParams creates a new QueryRewardsParams object
// with the default values initialized.
func NewQueryRewardsParams() *QueryRewardsParams {
	var ()
	return &QueryRewardsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryRewardsParamsWithTimeout creates a new QueryRewardsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryRewardsParamsWithTimeout(timeout time.Duration) *QueryRewardsParams {
	var ()
	return &QueryRewardsParams{

		timeout: timeout,
	}
}

// NewQueryRewardsParamsWithContext creates a new QueryRewardsParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryRewardsParamsWithContext(ctx context.Context) *QueryRewardsParams {
	var ()
	return &QueryRewardsParams{

		Context: ctx,
	}
}

// NewQueryRewardsParamsWithHTTPClient creates a new QueryRewardsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryRewardsParamsWithHTTPClient(client *http.Client) *QueryRewardsParams {
	var ()
	return &QueryRewardsParams{
		HTTPClient: client,
	}
}

/*QueryRewardsParams contains all the parameters to send to the API endpoint
for the query rewards operation typically these are written to a http.Request
*/
type QueryRewardsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*SeasonID*/
	SeasonID string
	/*Q*/
	Q *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query rewards params
func (o *QueryRewardsParams) WithTimeout(timeout time.Duration) *QueryRewardsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query rewards params
func (o *QueryRewardsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query rewards params
func (o *QueryRewardsParams) WithContext(ctx context.Context) *QueryRewardsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query rewards params
func (o *QueryRewardsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query rewards params
func (o *QueryRewardsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query rewards params
func (o *QueryRewardsParams) WithHTTPClient(client *http.Client) *QueryRewardsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query rewards params
func (o *QueryRewardsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query rewards params
func (o *QueryRewardsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryRewardsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query rewards params
func (o *QueryRewardsParams) WithNamespace(namespace string) *QueryRewardsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query rewards params
func (o *QueryRewardsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSeasonID adds the seasonID to the query rewards params
func (o *QueryRewardsParams) WithSeasonID(seasonID string) *QueryRewardsParams {
	o.SetSeasonID(seasonID)
	return o
}

// SetSeasonID adds the seasonId to the query rewards params
func (o *QueryRewardsParams) SetSeasonID(seasonID string) {
	o.SeasonID = seasonID
}

// WithQ adds the q to the query rewards params
func (o *QueryRewardsParams) WithQ(q *string) *QueryRewardsParams {
	o.SetQ(q)
	return o
}

// SetQ adds the q to the query rewards params
func (o *QueryRewardsParams) SetQ(q *string) {
	o.Q = q
}

// WriteToRequest writes these params to a swagger request
func (o *QueryRewardsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param seasonId
	if err := r.SetPathParam("seasonId", o.SeasonID); err != nil {
		return err
	}

	if o.Q != nil {

		// query param q
		var qrQ string
		if o.Q != nil {
			qrQ = *o.Q
		}
		qQ := qrQ
		if qQ != "" {
			if err := r.SetQueryParam("q", qQ); err != nil {
				return err
			}
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
