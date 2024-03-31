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

// NewQueryMatchHistoriesParams creates a new QueryMatchHistoriesParams object
// with the default values initialized.
func NewQueryMatchHistoriesParams() *QueryMatchHistoriesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &QueryMatchHistoriesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryMatchHistoriesParamsWithTimeout creates a new QueryMatchHistoriesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryMatchHistoriesParamsWithTimeout(timeout time.Duration) *QueryMatchHistoriesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &QueryMatchHistoriesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryMatchHistoriesParamsWithContext creates a new QueryMatchHistoriesParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryMatchHistoriesParamsWithContext(ctx context.Context) *QueryMatchHistoriesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &QueryMatchHistoriesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryMatchHistoriesParamsWithHTTPClient creates a new QueryMatchHistoriesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryMatchHistoriesParamsWithHTTPClient(client *http.Client) *QueryMatchHistoriesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &QueryMatchHistoriesParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryMatchHistoriesParams contains all the parameters to send to the API endpoint
for the query match histories operation typically these are written to a http.Request
*/
type QueryMatchHistoriesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*MatchID
	  match id

	*/
	MatchID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Limit
	  Pagination limit

	*/
	Limit *int64
	/*Offset
	  Pagination offset

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query match histories params
func (o *QueryMatchHistoriesParams) WithTimeout(timeout time.Duration) *QueryMatchHistoriesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query match histories params
func (o *QueryMatchHistoriesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query match histories params
func (o *QueryMatchHistoriesParams) WithContext(ctx context.Context) *QueryMatchHistoriesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query match histories params
func (o *QueryMatchHistoriesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query match histories params
func (o *QueryMatchHistoriesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query match histories params
func (o *QueryMatchHistoriesParams) WithHTTPClient(client *http.Client) *QueryMatchHistoriesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query match histories params
func (o *QueryMatchHistoriesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query match histories params
func (o *QueryMatchHistoriesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryMatchHistoriesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithMatchID adds the matchID to the query match histories params
func (o *QueryMatchHistoriesParams) WithMatchID(matchID string) *QueryMatchHistoriesParams {
	o.SetMatchID(matchID)
	return o
}

// SetMatchID adds the matchId to the query match histories params
func (o *QueryMatchHistoriesParams) SetMatchID(matchID string) {
	o.MatchID = matchID
}

// WithNamespace adds the namespace to the query match histories params
func (o *QueryMatchHistoriesParams) WithNamespace(namespace string) *QueryMatchHistoriesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query match histories params
func (o *QueryMatchHistoriesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the query match histories params
func (o *QueryMatchHistoriesParams) WithLimit(limit *int64) *QueryMatchHistoriesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query match histories params
func (o *QueryMatchHistoriesParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the query match histories params
func (o *QueryMatchHistoriesParams) WithOffset(offset *int64) *QueryMatchHistoriesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query match histories params
func (o *QueryMatchHistoriesParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *QueryMatchHistoriesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param matchId
	if err := r.SetPathParam("matchId", o.MatchID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
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
