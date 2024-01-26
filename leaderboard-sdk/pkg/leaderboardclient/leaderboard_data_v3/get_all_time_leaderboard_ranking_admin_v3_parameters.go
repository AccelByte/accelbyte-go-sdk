// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboard_data_v3

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

// NewGetAllTimeLeaderboardRankingAdminV3Params creates a new GetAllTimeLeaderboardRankingAdminV3Params object
// with the default values initialized.
func NewGetAllTimeLeaderboardRankingAdminV3Params() *GetAllTimeLeaderboardRankingAdminV3Params {
	var ()
	return &GetAllTimeLeaderboardRankingAdminV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetAllTimeLeaderboardRankingAdminV3ParamsWithTimeout creates a new GetAllTimeLeaderboardRankingAdminV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetAllTimeLeaderboardRankingAdminV3ParamsWithTimeout(timeout time.Duration) *GetAllTimeLeaderboardRankingAdminV3Params {
	var ()
	return &GetAllTimeLeaderboardRankingAdminV3Params{

		timeout: timeout,
	}
}

// NewGetAllTimeLeaderboardRankingAdminV3ParamsWithContext creates a new GetAllTimeLeaderboardRankingAdminV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetAllTimeLeaderboardRankingAdminV3ParamsWithContext(ctx context.Context) *GetAllTimeLeaderboardRankingAdminV3Params {
	var ()
	return &GetAllTimeLeaderboardRankingAdminV3Params{

		Context: ctx,
	}
}

// NewGetAllTimeLeaderboardRankingAdminV3ParamsWithHTTPClient creates a new GetAllTimeLeaderboardRankingAdminV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetAllTimeLeaderboardRankingAdminV3ParamsWithHTTPClient(client *http.Client) *GetAllTimeLeaderboardRankingAdminV3Params {
	var ()
	return &GetAllTimeLeaderboardRankingAdminV3Params{
		HTTPClient: client,
	}
}

/*GetAllTimeLeaderboardRankingAdminV3Params contains all the parameters to send to the API endpoint
for the get all time leaderboard ranking admin v3 operation typically these are written to a http.Request
*/
type GetAllTimeLeaderboardRankingAdminV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*LeaderboardCode
	  the human readable unique code to identify the leaderboard. Must be lowercase and maximum length is 48

	*/
	LeaderboardCode string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Limit
	  size of displayed data

	*/
	Limit *int64
	/*Offset
	  The start position that points to query data

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get all time leaderboard ranking admin v3 params
func (o *GetAllTimeLeaderboardRankingAdminV3Params) WithTimeout(timeout time.Duration) *GetAllTimeLeaderboardRankingAdminV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get all time leaderboard ranking admin v3 params
func (o *GetAllTimeLeaderboardRankingAdminV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get all time leaderboard ranking admin v3 params
func (o *GetAllTimeLeaderboardRankingAdminV3Params) WithContext(ctx context.Context) *GetAllTimeLeaderboardRankingAdminV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get all time leaderboard ranking admin v3 params
func (o *GetAllTimeLeaderboardRankingAdminV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get all time leaderboard ranking admin v3 params
func (o *GetAllTimeLeaderboardRankingAdminV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get all time leaderboard ranking admin v3 params
func (o *GetAllTimeLeaderboardRankingAdminV3Params) WithHTTPClient(client *http.Client) *GetAllTimeLeaderboardRankingAdminV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get all time leaderboard ranking admin v3 params
func (o *GetAllTimeLeaderboardRankingAdminV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get all time leaderboard ranking admin v3 params
func (o *GetAllTimeLeaderboardRankingAdminV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetAllTimeLeaderboardRankingAdminV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithLeaderboardCode adds the leaderboardCode to the get all time leaderboard ranking admin v3 params
func (o *GetAllTimeLeaderboardRankingAdminV3Params) WithLeaderboardCode(leaderboardCode string) *GetAllTimeLeaderboardRankingAdminV3Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the get all time leaderboard ranking admin v3 params
func (o *GetAllTimeLeaderboardRankingAdminV3Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the get all time leaderboard ranking admin v3 params
func (o *GetAllTimeLeaderboardRankingAdminV3Params) WithNamespace(namespace string) *GetAllTimeLeaderboardRankingAdminV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get all time leaderboard ranking admin v3 params
func (o *GetAllTimeLeaderboardRankingAdminV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get all time leaderboard ranking admin v3 params
func (o *GetAllTimeLeaderboardRankingAdminV3Params) WithLimit(limit *int64) *GetAllTimeLeaderboardRankingAdminV3Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get all time leaderboard ranking admin v3 params
func (o *GetAllTimeLeaderboardRankingAdminV3Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get all time leaderboard ranking admin v3 params
func (o *GetAllTimeLeaderboardRankingAdminV3Params) WithOffset(offset *int64) *GetAllTimeLeaderboardRankingAdminV3Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get all time leaderboard ranking admin v3 params
func (o *GetAllTimeLeaderboardRankingAdminV3Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetAllTimeLeaderboardRankingAdminV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param leaderboardCode
	if err := r.SetPathParam("leaderboardCode", o.LeaderboardCode); err != nil {
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
