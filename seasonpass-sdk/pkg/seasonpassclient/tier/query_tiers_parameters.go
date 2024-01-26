// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package tier

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

// NewQueryTiersParams creates a new QueryTiersParams object
// with the default values initialized.
func NewQueryTiersParams() *QueryTiersParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryTiersParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryTiersParamsWithTimeout creates a new QueryTiersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryTiersParamsWithTimeout(timeout time.Duration) *QueryTiersParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryTiersParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryTiersParamsWithContext creates a new QueryTiersParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryTiersParamsWithContext(ctx context.Context) *QueryTiersParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryTiersParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryTiersParamsWithHTTPClient creates a new QueryTiersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryTiersParamsWithHTTPClient(client *http.Client) *QueryTiersParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryTiersParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryTiersParams contains all the parameters to send to the API endpoint
for the query tiers operation typically these are written to a http.Request
*/
type QueryTiersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*SeasonID*/
	SeasonID string
	/*Limit
	  limit

	*/
	Limit *int32
	/*Offset
	  offset

	*/
	Offset *int32

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query tiers params
func (o *QueryTiersParams) WithTimeout(timeout time.Duration) *QueryTiersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query tiers params
func (o *QueryTiersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query tiers params
func (o *QueryTiersParams) WithContext(ctx context.Context) *QueryTiersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query tiers params
func (o *QueryTiersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query tiers params
func (o *QueryTiersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query tiers params
func (o *QueryTiersParams) WithHTTPClient(client *http.Client) *QueryTiersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query tiers params
func (o *QueryTiersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query tiers params
func (o *QueryTiersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryTiersParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query tiers params
func (o *QueryTiersParams) WithNamespace(namespace string) *QueryTiersParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query tiers params
func (o *QueryTiersParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSeasonID adds the seasonID to the query tiers params
func (o *QueryTiersParams) WithSeasonID(seasonID string) *QueryTiersParams {
	o.SetSeasonID(seasonID)
	return o
}

// SetSeasonID adds the seasonId to the query tiers params
func (o *QueryTiersParams) SetSeasonID(seasonID string) {
	o.SeasonID = seasonID
}

// WithLimit adds the limit to the query tiers params
func (o *QueryTiersParams) WithLimit(limit *int32) *QueryTiersParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query tiers params
func (o *QueryTiersParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query tiers params
func (o *QueryTiersParams) WithOffset(offset *int32) *QueryTiersParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query tiers params
func (o *QueryTiersParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *QueryTiersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Limit != nil {

		// query param limit
		var qrLimit int32
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt32(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int32
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt32(qrOffset)
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
