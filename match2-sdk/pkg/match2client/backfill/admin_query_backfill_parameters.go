// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package backfill

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

// NewAdminQueryBackfillParams creates a new AdminQueryBackfillParams object
// with the default values initialized.
func NewAdminQueryBackfillParams() *AdminQueryBackfillParams {
	var (
		limitDefault = int64(20)
	)
	return &AdminQueryBackfillParams{
		Limit: &limitDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminQueryBackfillParamsWithTimeout creates a new AdminQueryBackfillParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminQueryBackfillParamsWithTimeout(timeout time.Duration) *AdminQueryBackfillParams {
	var (
		limitDefault = int64(20)
	)
	return &AdminQueryBackfillParams{
		Limit: &limitDefault,

		timeout: timeout,
	}
}

// NewAdminQueryBackfillParamsWithContext creates a new AdminQueryBackfillParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminQueryBackfillParamsWithContext(ctx context.Context) *AdminQueryBackfillParams {
	var (
		limitDefault = int64(20)
	)
	return &AdminQueryBackfillParams{
		Limit: &limitDefault,

		Context: ctx,
	}
}

// NewAdminQueryBackfillParamsWithHTTPClient creates a new AdminQueryBackfillParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminQueryBackfillParamsWithHTTPClient(client *http.Client) *AdminQueryBackfillParams {
	var (
		limitDefault = int64(20)
	)
	return &AdminQueryBackfillParams{
		Limit:      &limitDefault,
		HTTPClient: client,
	}
}

/*AdminQueryBackfillParams contains all the parameters to send to the API endpoint
for the admin query backfill operation typically these are written to a http.Request
*/
type AdminQueryBackfillParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*FromTime
	  beginning of backfill ticket creation time range in RFC 3339 format e.g. 2022-10-21T07:20:50Z

	*/
	FromTime *string
	/*IsActive
	  backfill isActive flag

	*/
	IsActive *bool
	/*Limit
	  limit of the returned data

	*/
	Limit *int64
	/*MatchPool
	  ticket match pool

	*/
	MatchPool *string
	/*Offset
	  offset of the data

	*/
	Offset *int64
	/*PlayerID
	  player ID of the backfilled session (WARNING: slow)

	*/
	PlayerID *string
	/*Region
	  preferred region of the backfilled session (WARNING: slow)

	*/
	Region *string
	/*SessionID
	  backfill Session ID

	*/
	SessionID *string
	/*ToTime
	  end of backfill ticket creation time range in RFC 3339 format e.g. 2022-10-21T07:20:50Z

	*/
	ToTime *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin query backfill params
func (o *AdminQueryBackfillParams) WithTimeout(timeout time.Duration) *AdminQueryBackfillParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin query backfill params
func (o *AdminQueryBackfillParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin query backfill params
func (o *AdminQueryBackfillParams) WithContext(ctx context.Context) *AdminQueryBackfillParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin query backfill params
func (o *AdminQueryBackfillParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin query backfill params
func (o *AdminQueryBackfillParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin query backfill params
func (o *AdminQueryBackfillParams) WithHTTPClient(client *http.Client) *AdminQueryBackfillParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin query backfill params
func (o *AdminQueryBackfillParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin query backfill params
func (o *AdminQueryBackfillParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminQueryBackfillParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin query backfill params
func (o *AdminQueryBackfillParams) WithNamespace(namespace string) *AdminQueryBackfillParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin query backfill params
func (o *AdminQueryBackfillParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithFromTime adds the fromTime to the admin query backfill params
func (o *AdminQueryBackfillParams) WithFromTime(fromTime *string) *AdminQueryBackfillParams {
	o.SetFromTime(fromTime)
	return o
}

// SetFromTime adds the fromTime to the admin query backfill params
func (o *AdminQueryBackfillParams) SetFromTime(fromTime *string) {
	o.FromTime = fromTime
}

// WithIsActive adds the isActive to the admin query backfill params
func (o *AdminQueryBackfillParams) WithIsActive(isActive *bool) *AdminQueryBackfillParams {
	o.SetIsActive(isActive)
	return o
}

// SetIsActive adds the isActive to the admin query backfill params
func (o *AdminQueryBackfillParams) SetIsActive(isActive *bool) {
	o.IsActive = isActive
}

// WithLimit adds the limit to the admin query backfill params
func (o *AdminQueryBackfillParams) WithLimit(limit *int64) *AdminQueryBackfillParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin query backfill params
func (o *AdminQueryBackfillParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithMatchPool adds the matchPool to the admin query backfill params
func (o *AdminQueryBackfillParams) WithMatchPool(matchPool *string) *AdminQueryBackfillParams {
	o.SetMatchPool(matchPool)
	return o
}

// SetMatchPool adds the matchPool to the admin query backfill params
func (o *AdminQueryBackfillParams) SetMatchPool(matchPool *string) {
	o.MatchPool = matchPool
}

// WithOffset adds the offset to the admin query backfill params
func (o *AdminQueryBackfillParams) WithOffset(offset *int64) *AdminQueryBackfillParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin query backfill params
func (o *AdminQueryBackfillParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithPlayerID adds the playerID to the admin query backfill params
func (o *AdminQueryBackfillParams) WithPlayerID(playerID *string) *AdminQueryBackfillParams {
	o.SetPlayerID(playerID)
	return o
}

// SetPlayerID adds the playerId to the admin query backfill params
func (o *AdminQueryBackfillParams) SetPlayerID(playerID *string) {
	o.PlayerID = playerID
}

// WithRegion adds the region to the admin query backfill params
func (o *AdminQueryBackfillParams) WithRegion(region *string) *AdminQueryBackfillParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the admin query backfill params
func (o *AdminQueryBackfillParams) SetRegion(region *string) {
	o.Region = region
}

// WithSessionID adds the sessionID to the admin query backfill params
func (o *AdminQueryBackfillParams) WithSessionID(sessionID *string) *AdminQueryBackfillParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the admin query backfill params
func (o *AdminQueryBackfillParams) SetSessionID(sessionID *string) {
	o.SessionID = sessionID
}

// WithToTime adds the toTime to the admin query backfill params
func (o *AdminQueryBackfillParams) WithToTime(toTime *string) *AdminQueryBackfillParams {
	o.SetToTime(toTime)
	return o
}

// SetToTime adds the toTime to the admin query backfill params
func (o *AdminQueryBackfillParams) SetToTime(toTime *string) {
	o.ToTime = toTime
}

// WriteToRequest writes these params to a swagger request
func (o *AdminQueryBackfillParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.FromTime != nil {

		// query param fromTime
		var qrFromTime string
		if o.FromTime != nil {
			qrFromTime = *o.FromTime
		}
		qFromTime := qrFromTime
		if qFromTime != "" {
			if err := r.SetQueryParam("fromTime", qFromTime); err != nil {
				return err
			}
		}

	}

	if o.IsActive != nil {

		// query param isActive
		var qrIsActive bool
		if o.IsActive != nil {
			qrIsActive = *o.IsActive
		}
		qIsActive := swag.FormatBool(qrIsActive)
		if qIsActive != "" {
			if err := r.SetQueryParam("isActive", qIsActive); err != nil {
				return err
			}
		}

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

	if o.MatchPool != nil {

		// query param matchPool
		var qrMatchPool string
		if o.MatchPool != nil {
			qrMatchPool = *o.MatchPool
		}
		qMatchPool := qrMatchPool
		if qMatchPool != "" {
			if err := r.SetQueryParam("matchPool", qMatchPool); err != nil {
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

	if o.PlayerID != nil {

		// query param playerID
		var qrPlayerID string
		if o.PlayerID != nil {
			qrPlayerID = *o.PlayerID
		}
		qPlayerID := qrPlayerID
		if qPlayerID != "" {
			if err := r.SetQueryParam("playerID", qPlayerID); err != nil {
				return err
			}
		}

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

	if o.SessionID != nil {

		// query param sessionID
		var qrSessionID string
		if o.SessionID != nil {
			qrSessionID = *o.SessionID
		}
		qSessionID := qrSessionID
		if qSessionID != "" {
			if err := r.SetQueryParam("sessionID", qSessionID); err != nil {
				return err
			}
		}

	}

	if o.ToTime != nil {

		// query param toTime
		var qrToTime string
		if o.ToTime != nil {
			qrToTime = *o.ToTime
		}
		qToTime := qrToTime
		if qToTime != "" {
			if err := r.SetQueryParam("toTime", qToTime); err != nil {
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
