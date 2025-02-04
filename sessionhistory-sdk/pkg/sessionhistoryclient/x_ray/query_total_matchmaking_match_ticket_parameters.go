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

// NewQueryTotalMatchmakingMatchTicketParams creates a new QueryTotalMatchmakingMatchTicketParams object
// with the default values initialized.
func NewQueryTotalMatchmakingMatchTicketParams() *QueryTotalMatchmakingMatchTicketParams {
	var ()
	return &QueryTotalMatchmakingMatchTicketParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryTotalMatchmakingMatchTicketParamsWithTimeout creates a new QueryTotalMatchmakingMatchTicketParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryTotalMatchmakingMatchTicketParamsWithTimeout(timeout time.Duration) *QueryTotalMatchmakingMatchTicketParams {
	var ()
	return &QueryTotalMatchmakingMatchTicketParams{

		timeout: timeout,
	}
}

// NewQueryTotalMatchmakingMatchTicketParamsWithContext creates a new QueryTotalMatchmakingMatchTicketParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryTotalMatchmakingMatchTicketParamsWithContext(ctx context.Context) *QueryTotalMatchmakingMatchTicketParams {
	var ()
	return &QueryTotalMatchmakingMatchTicketParams{

		Context: ctx,
	}
}

// NewQueryTotalMatchmakingMatchTicketParamsWithHTTPClient creates a new QueryTotalMatchmakingMatchTicketParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryTotalMatchmakingMatchTicketParamsWithHTTPClient(client *http.Client) *QueryTotalMatchmakingMatchTicketParams {
	var ()
	return &QueryTotalMatchmakingMatchTicketParams{
		HTTPClient: client,
	}
}

/*QueryTotalMatchmakingMatchTicketParams contains all the parameters to send to the API endpoint
for the query total matchmaking match ticket operation typically these are written to a http.Request
*/
type QueryTotalMatchmakingMatchTicketParams struct {

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
	  End date time: 2025-02-03T00:25:35Z

	*/
	EndDate string
	/*StartDate
	  Start date time. Format: 2025-02-03T00:25:35Z

	*/
	StartDate string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query total matchmaking match ticket params
func (o *QueryTotalMatchmakingMatchTicketParams) WithTimeout(timeout time.Duration) *QueryTotalMatchmakingMatchTicketParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query total matchmaking match ticket params
func (o *QueryTotalMatchmakingMatchTicketParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query total matchmaking match ticket params
func (o *QueryTotalMatchmakingMatchTicketParams) WithContext(ctx context.Context) *QueryTotalMatchmakingMatchTicketParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query total matchmaking match ticket params
func (o *QueryTotalMatchmakingMatchTicketParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query total matchmaking match ticket params
func (o *QueryTotalMatchmakingMatchTicketParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query total matchmaking match ticket params
func (o *QueryTotalMatchmakingMatchTicketParams) WithHTTPClient(client *http.Client) *QueryTotalMatchmakingMatchTicketParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query total matchmaking match ticket params
func (o *QueryTotalMatchmakingMatchTicketParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query total matchmaking match ticket params
func (o *QueryTotalMatchmakingMatchTicketParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryTotalMatchmakingMatchTicketParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query total matchmaking match ticket params
func (o *QueryTotalMatchmakingMatchTicketParams) WithNamespace(namespace string) *QueryTotalMatchmakingMatchTicketParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query total matchmaking match ticket params
func (o *QueryTotalMatchmakingMatchTicketParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithMatchPool adds the matchPool to the query total matchmaking match ticket params
func (o *QueryTotalMatchmakingMatchTicketParams) WithMatchPool(matchPool []string) *QueryTotalMatchmakingMatchTicketParams {
	o.SetMatchPool(matchPool)
	return o
}

// SetMatchPool adds the matchPool to the query total matchmaking match ticket params
func (o *QueryTotalMatchmakingMatchTicketParams) SetMatchPool(matchPool []string) {
	o.MatchPool = matchPool
}

// WithEndDate adds the endDate to the query total matchmaking match ticket params
func (o *QueryTotalMatchmakingMatchTicketParams) WithEndDate(endDate string) *QueryTotalMatchmakingMatchTicketParams {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the query total matchmaking match ticket params
func (o *QueryTotalMatchmakingMatchTicketParams) SetEndDate(endDate string) {
	o.EndDate = endDate
}

// WithStartDate adds the startDate to the query total matchmaking match ticket params
func (o *QueryTotalMatchmakingMatchTicketParams) WithStartDate(startDate string) *QueryTotalMatchmakingMatchTicketParams {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the query total matchmaking match ticket params
func (o *QueryTotalMatchmakingMatchTicketParams) SetStartDate(startDate string) {
	o.StartDate = startDate
}

// WriteToRequest writes these params to a swagger request
func (o *QueryTotalMatchmakingMatchTicketParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
