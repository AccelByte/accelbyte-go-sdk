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

// NewQueryAcquiringDSWaitTimeAvgParams creates a new QueryAcquiringDSWaitTimeAvgParams object
// with the default values initialized.
func NewQueryAcquiringDSWaitTimeAvgParams() *QueryAcquiringDSWaitTimeAvgParams {
	var ()
	return &QueryAcquiringDSWaitTimeAvgParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryAcquiringDSWaitTimeAvgParamsWithTimeout creates a new QueryAcquiringDSWaitTimeAvgParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryAcquiringDSWaitTimeAvgParamsWithTimeout(timeout time.Duration) *QueryAcquiringDSWaitTimeAvgParams {
	var ()
	return &QueryAcquiringDSWaitTimeAvgParams{

		timeout: timeout,
	}
}

// NewQueryAcquiringDSWaitTimeAvgParamsWithContext creates a new QueryAcquiringDSWaitTimeAvgParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryAcquiringDSWaitTimeAvgParamsWithContext(ctx context.Context) *QueryAcquiringDSWaitTimeAvgParams {
	var ()
	return &QueryAcquiringDSWaitTimeAvgParams{

		Context: ctx,
	}
}

// NewQueryAcquiringDSWaitTimeAvgParamsWithHTTPClient creates a new QueryAcquiringDSWaitTimeAvgParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryAcquiringDSWaitTimeAvgParamsWithHTTPClient(client *http.Client) *QueryAcquiringDSWaitTimeAvgParams {
	var ()
	return &QueryAcquiringDSWaitTimeAvgParams{
		HTTPClient: client,
	}
}

/*QueryAcquiringDSWaitTimeAvgParams contains all the parameters to send to the API endpoint
for the query acquiring ds wait time avg operation typically these are written to a http.Request
*/
type QueryAcquiringDSWaitTimeAvgParams struct {

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
	  End date time: 2025-04-23T08:43:40Z

	*/
	EndDate string
	/*StartDate
	  Start date time. Format: 2025-04-23T08:43:40Z

	*/
	StartDate string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query acquiring ds wait time avg params
func (o *QueryAcquiringDSWaitTimeAvgParams) WithTimeout(timeout time.Duration) *QueryAcquiringDSWaitTimeAvgParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query acquiring ds wait time avg params
func (o *QueryAcquiringDSWaitTimeAvgParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query acquiring ds wait time avg params
func (o *QueryAcquiringDSWaitTimeAvgParams) WithContext(ctx context.Context) *QueryAcquiringDSWaitTimeAvgParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query acquiring ds wait time avg params
func (o *QueryAcquiringDSWaitTimeAvgParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query acquiring ds wait time avg params
func (o *QueryAcquiringDSWaitTimeAvgParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query acquiring ds wait time avg params
func (o *QueryAcquiringDSWaitTimeAvgParams) WithHTTPClient(client *http.Client) *QueryAcquiringDSWaitTimeAvgParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query acquiring ds wait time avg params
func (o *QueryAcquiringDSWaitTimeAvgParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query acquiring ds wait time avg params
func (o *QueryAcquiringDSWaitTimeAvgParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryAcquiringDSWaitTimeAvgParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query acquiring ds wait time avg params
func (o *QueryAcquiringDSWaitTimeAvgParams) WithNamespace(namespace string) *QueryAcquiringDSWaitTimeAvgParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query acquiring ds wait time avg params
func (o *QueryAcquiringDSWaitTimeAvgParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithMatchPool adds the matchPool to the query acquiring ds wait time avg params
func (o *QueryAcquiringDSWaitTimeAvgParams) WithMatchPool(matchPool []string) *QueryAcquiringDSWaitTimeAvgParams {
	o.SetMatchPool(matchPool)
	return o
}

// SetMatchPool adds the matchPool to the query acquiring ds wait time avg params
func (o *QueryAcquiringDSWaitTimeAvgParams) SetMatchPool(matchPool []string) {
	o.MatchPool = matchPool
}

// WithEndDate adds the endDate to the query acquiring ds wait time avg params
func (o *QueryAcquiringDSWaitTimeAvgParams) WithEndDate(endDate string) *QueryAcquiringDSWaitTimeAvgParams {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the query acquiring ds wait time avg params
func (o *QueryAcquiringDSWaitTimeAvgParams) SetEndDate(endDate string) {
	o.EndDate = endDate
}

// WithStartDate adds the startDate to the query acquiring ds wait time avg params
func (o *QueryAcquiringDSWaitTimeAvgParams) WithStartDate(startDate string) *QueryAcquiringDSWaitTimeAvgParams {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the query acquiring ds wait time avg params
func (o *QueryAcquiringDSWaitTimeAvgParams) SetStartDate(startDate string) {
	o.StartDate = startDate
}

// WriteToRequest writes these params to a swagger request
func (o *QueryAcquiringDSWaitTimeAvgParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
