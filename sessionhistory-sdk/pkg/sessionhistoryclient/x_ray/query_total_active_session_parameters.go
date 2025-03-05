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

// NewQueryTotalActiveSessionParams creates a new QueryTotalActiveSessionParams object
// with the default values initialized.
func NewQueryTotalActiveSessionParams() *QueryTotalActiveSessionParams {
	var ()
	return &QueryTotalActiveSessionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryTotalActiveSessionParamsWithTimeout creates a new QueryTotalActiveSessionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryTotalActiveSessionParamsWithTimeout(timeout time.Duration) *QueryTotalActiveSessionParams {
	var ()
	return &QueryTotalActiveSessionParams{

		timeout: timeout,
	}
}

// NewQueryTotalActiveSessionParamsWithContext creates a new QueryTotalActiveSessionParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryTotalActiveSessionParamsWithContext(ctx context.Context) *QueryTotalActiveSessionParams {
	var ()
	return &QueryTotalActiveSessionParams{

		Context: ctx,
	}
}

// NewQueryTotalActiveSessionParamsWithHTTPClient creates a new QueryTotalActiveSessionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryTotalActiveSessionParamsWithHTTPClient(client *http.Client) *QueryTotalActiveSessionParams {
	var ()
	return &QueryTotalActiveSessionParams{
		HTTPClient: client,
	}
}

/*QueryTotalActiveSessionParams contains all the parameters to send to the API endpoint
for the query total active session operation typically these are written to a http.Request
*/
type QueryTotalActiveSessionParams struct {

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
	/*Region
	  region name

	*/
	Region *string
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

// WithTimeout adds the timeout to the query total active session params
func (o *QueryTotalActiveSessionParams) WithTimeout(timeout time.Duration) *QueryTotalActiveSessionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query total active session params
func (o *QueryTotalActiveSessionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query total active session params
func (o *QueryTotalActiveSessionParams) WithContext(ctx context.Context) *QueryTotalActiveSessionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query total active session params
func (o *QueryTotalActiveSessionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query total active session params
func (o *QueryTotalActiveSessionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query total active session params
func (o *QueryTotalActiveSessionParams) WithHTTPClient(client *http.Client) *QueryTotalActiveSessionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query total active session params
func (o *QueryTotalActiveSessionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query total active session params
func (o *QueryTotalActiveSessionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryTotalActiveSessionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query total active session params
func (o *QueryTotalActiveSessionParams) WithNamespace(namespace string) *QueryTotalActiveSessionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query total active session params
func (o *QueryTotalActiveSessionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithMatchPool adds the matchPool to the query total active session params
func (o *QueryTotalActiveSessionParams) WithMatchPool(matchPool []string) *QueryTotalActiveSessionParams {
	o.SetMatchPool(matchPool)
	return o
}

// SetMatchPool adds the matchPool to the query total active session params
func (o *QueryTotalActiveSessionParams) SetMatchPool(matchPool []string) {
	o.MatchPool = matchPool
}

// WithRegion adds the region to the query total active session params
func (o *QueryTotalActiveSessionParams) WithRegion(region *string) *QueryTotalActiveSessionParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the query total active session params
func (o *QueryTotalActiveSessionParams) SetRegion(region *string) {
	o.Region = region
}

// WithEndDate adds the endDate to the query total active session params
func (o *QueryTotalActiveSessionParams) WithEndDate(endDate string) *QueryTotalActiveSessionParams {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the query total active session params
func (o *QueryTotalActiveSessionParams) SetEndDate(endDate string) {
	o.EndDate = endDate
}

// WithStartDate adds the startDate to the query total active session params
func (o *QueryTotalActiveSessionParams) WithStartDate(startDate string) *QueryTotalActiveSessionParams {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the query total active session params
func (o *QueryTotalActiveSessionParams) SetStartDate(startDate string) {
	o.StartDate = startDate
}

// WriteToRequest writes these params to a swagger request
func (o *QueryTotalActiveSessionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Region != nil {

		// query param region
		var qrRegion string
		if o.Region != nil {
			qrRegion = *o.Region
		}
		qRegion := qrRegion
		if qRegion != "" {
			if err := r.SetQueryParam("region", qRegion); err != nil {
				return err
			}
		}

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
