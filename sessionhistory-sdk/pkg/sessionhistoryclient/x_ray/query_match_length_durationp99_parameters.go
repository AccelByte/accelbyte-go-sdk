// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package x_ray

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewQueryMatchLengthDurationp99Params creates a new QueryMatchLengthDurationp99Params object
// with the default values initialized.
func NewQueryMatchLengthDurationp99Params() *QueryMatchLengthDurationp99Params {
	var ()
	return &QueryMatchLengthDurationp99Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryMatchLengthDurationp99ParamsWithTimeout creates a new QueryMatchLengthDurationp99Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryMatchLengthDurationp99ParamsWithTimeout(timeout time.Duration) *QueryMatchLengthDurationp99Params {
	var ()
	return &QueryMatchLengthDurationp99Params{

		timeout: timeout,
	}
}

// NewQueryMatchLengthDurationp99ParamsWithContext creates a new QueryMatchLengthDurationp99Params object
// with the default values initialized, and the ability to set a context for a request
func NewQueryMatchLengthDurationp99ParamsWithContext(ctx context.Context) *QueryMatchLengthDurationp99Params {
	var ()
	return &QueryMatchLengthDurationp99Params{

		Context: ctx,
	}
}

// NewQueryMatchLengthDurationp99ParamsWithHTTPClient creates a new QueryMatchLengthDurationp99Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryMatchLengthDurationp99ParamsWithHTTPClient(client *http.Client) *QueryMatchLengthDurationp99Params {
	var ()
	return &QueryMatchLengthDurationp99Params{
		HTTPClient: client,
	}
}

/*QueryMatchLengthDurationp99Params contains all the parameters to send to the API endpoint
for the query match length durationp99 operation typically these are written to a http.Request
*/
type QueryMatchLengthDurationp99Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*MatchPool
	  match pool name

	*/
	MatchPool []string
	/*EndDate
	  End date time: 2025-02-28T07:45:39Z

	*/
	EndDate string
	/*StartDate
	  Start date time. Format: 2025-02-28T07:45:39Z

	*/
	StartDate string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query match length durationp99 params
func (o *QueryMatchLengthDurationp99Params) WithTimeout(timeout time.Duration) *QueryMatchLengthDurationp99Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query match length durationp99 params
func (o *QueryMatchLengthDurationp99Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query match length durationp99 params
func (o *QueryMatchLengthDurationp99Params) WithContext(ctx context.Context) *QueryMatchLengthDurationp99Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query match length durationp99 params
func (o *QueryMatchLengthDurationp99Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query match length durationp99 params
func (o *QueryMatchLengthDurationp99Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query match length durationp99 params
func (o *QueryMatchLengthDurationp99Params) WithHTTPClient(client *http.Client) *QueryMatchLengthDurationp99Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query match length durationp99 params
func (o *QueryMatchLengthDurationp99Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query match length durationp99 params
func (o *QueryMatchLengthDurationp99Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryMatchLengthDurationp99Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query match length durationp99 params
func (o *QueryMatchLengthDurationp99Params) WithNamespace(namespace string) *QueryMatchLengthDurationp99Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query match length durationp99 params
func (o *QueryMatchLengthDurationp99Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithMatchPool adds the matchPool to the query match length durationp99 params
func (o *QueryMatchLengthDurationp99Params) WithMatchPool(matchPool []string) *QueryMatchLengthDurationp99Params {
	o.SetMatchPool(matchPool)
	return o
}

// SetMatchPool adds the matchPool to the query match length durationp99 params
func (o *QueryMatchLengthDurationp99Params) SetMatchPool(matchPool []string) {
	o.MatchPool = matchPool
}

// WithEndDate adds the endDate to the query match length durationp99 params
func (o *QueryMatchLengthDurationp99Params) WithEndDate(endDate string) *QueryMatchLengthDurationp99Params {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the query match length durationp99 params
func (o *QueryMatchLengthDurationp99Params) SetEndDate(endDate string) {
	o.EndDate = endDate
}

// WithStartDate adds the startDate to the query match length durationp99 params
func (o *QueryMatchLengthDurationp99Params) WithStartDate(startDate string) *QueryMatchLengthDurationp99Params {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the query match length durationp99 params
func (o *QueryMatchLengthDurationp99Params) SetStartDate(startDate string) {
	o.StartDate = startDate
}

// WriteToRequest writes these params to a swagger request
func (o *QueryMatchLengthDurationp99Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	valuesMatchPool := o.MatchPool

	joinedMatchPool := swag.JoinByFormat(valuesMatchPool, "csv")
	// query array param matchPool
	if err := r.SetQueryParam("matchPool", joinedMatchPool...); err != nil {
		return err
	}

	// query param endDate
	qrEndDate := o.EndDate
	qEndDate := qrEndDate
	if qEndDate != "" {
		if err := r.SetQueryParam("endDate", qEndDate); err != nil {
			return err
		}
	}

	// query param startDate
	qrStartDate := o.StartDate
	qStartDate := qrStartDate
	if qStartDate != "" {
		if err := r.SetQueryParam("startDate", qStartDate); err != nil {
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
