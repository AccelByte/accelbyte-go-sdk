// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboard_data

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

// NewGetCurrentWeekLeaderboardRankingAdminV1Params creates a new GetCurrentWeekLeaderboardRankingAdminV1Params object
// with the default values initialized.
func NewGetCurrentWeekLeaderboardRankingAdminV1Params() *GetCurrentWeekLeaderboardRankingAdminV1Params {
	var ()
	return &GetCurrentWeekLeaderboardRankingAdminV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetCurrentWeekLeaderboardRankingAdminV1ParamsWithTimeout creates a new GetCurrentWeekLeaderboardRankingAdminV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetCurrentWeekLeaderboardRankingAdminV1ParamsWithTimeout(timeout time.Duration) *GetCurrentWeekLeaderboardRankingAdminV1Params {
	var ()
	return &GetCurrentWeekLeaderboardRankingAdminV1Params{

		timeout: timeout,
	}
}

// NewGetCurrentWeekLeaderboardRankingAdminV1ParamsWithContext creates a new GetCurrentWeekLeaderboardRankingAdminV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetCurrentWeekLeaderboardRankingAdminV1ParamsWithContext(ctx context.Context) *GetCurrentWeekLeaderboardRankingAdminV1Params {
	var ()
	return &GetCurrentWeekLeaderboardRankingAdminV1Params{

		Context: ctx,
	}
}

// NewGetCurrentWeekLeaderboardRankingAdminV1ParamsWithHTTPClient creates a new GetCurrentWeekLeaderboardRankingAdminV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetCurrentWeekLeaderboardRankingAdminV1ParamsWithHTTPClient(client *http.Client) *GetCurrentWeekLeaderboardRankingAdminV1Params {
	var ()
	return &GetCurrentWeekLeaderboardRankingAdminV1Params{
		HTTPClient: client,
	}
}

/*GetCurrentWeekLeaderboardRankingAdminV1Params contains all the parameters to send to the API endpoint
for the get current week leaderboard ranking admin v1 operation typically these are written to a http.Request
*/
type GetCurrentWeekLeaderboardRankingAdminV1Params struct {

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
	/*PreviousVersion
	  Specify specific version of leaderboard data, < 0 will be archived/history leaderboard data. Currently only support 1 previous version, default value will be 0 (active leaderboard)

	*/
	PreviousVersion *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get current week leaderboard ranking admin v1 params
func (o *GetCurrentWeekLeaderboardRankingAdminV1Params) WithTimeout(timeout time.Duration) *GetCurrentWeekLeaderboardRankingAdminV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get current week leaderboard ranking admin v1 params
func (o *GetCurrentWeekLeaderboardRankingAdminV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get current week leaderboard ranking admin v1 params
func (o *GetCurrentWeekLeaderboardRankingAdminV1Params) WithContext(ctx context.Context) *GetCurrentWeekLeaderboardRankingAdminV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get current week leaderboard ranking admin v1 params
func (o *GetCurrentWeekLeaderboardRankingAdminV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get current week leaderboard ranking admin v1 params
func (o *GetCurrentWeekLeaderboardRankingAdminV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get current week leaderboard ranking admin v1 params
func (o *GetCurrentWeekLeaderboardRankingAdminV1Params) WithHTTPClient(client *http.Client) *GetCurrentWeekLeaderboardRankingAdminV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get current week leaderboard ranking admin v1 params
func (o *GetCurrentWeekLeaderboardRankingAdminV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get current week leaderboard ranking admin v1 params
func (o *GetCurrentWeekLeaderboardRankingAdminV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithLeaderboardCode adds the leaderboardCode to the get current week leaderboard ranking admin v1 params
func (o *GetCurrentWeekLeaderboardRankingAdminV1Params) WithLeaderboardCode(leaderboardCode string) *GetCurrentWeekLeaderboardRankingAdminV1Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the get current week leaderboard ranking admin v1 params
func (o *GetCurrentWeekLeaderboardRankingAdminV1Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the get current week leaderboard ranking admin v1 params
func (o *GetCurrentWeekLeaderboardRankingAdminV1Params) WithNamespace(namespace string) *GetCurrentWeekLeaderboardRankingAdminV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get current week leaderboard ranking admin v1 params
func (o *GetCurrentWeekLeaderboardRankingAdminV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get current week leaderboard ranking admin v1 params
func (o *GetCurrentWeekLeaderboardRankingAdminV1Params) WithLimit(limit *int64) *GetCurrentWeekLeaderboardRankingAdminV1Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get current week leaderboard ranking admin v1 params
func (o *GetCurrentWeekLeaderboardRankingAdminV1Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get current week leaderboard ranking admin v1 params
func (o *GetCurrentWeekLeaderboardRankingAdminV1Params) WithOffset(offset *int64) *GetCurrentWeekLeaderboardRankingAdminV1Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get current week leaderboard ranking admin v1 params
func (o *GetCurrentWeekLeaderboardRankingAdminV1Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithPreviousVersion adds the previousVersion to the get current week leaderboard ranking admin v1 params
func (o *GetCurrentWeekLeaderboardRankingAdminV1Params) WithPreviousVersion(previousVersion *int64) *GetCurrentWeekLeaderboardRankingAdminV1Params {
	o.SetPreviousVersion(previousVersion)
	return o
}

// SetPreviousVersion adds the previousVersion to the get current week leaderboard ranking admin v1 params
func (o *GetCurrentWeekLeaderboardRankingAdminV1Params) SetPreviousVersion(previousVersion *int64) {
	o.PreviousVersion = previousVersion
}

// WriteToRequest writes these params to a swagger request
func (o *GetCurrentWeekLeaderboardRankingAdminV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.PreviousVersion != nil {

		// query param previousVersion
		var qrPreviousVersion int64
		if o.PreviousVersion != nil {
			qrPreviousVersion = *o.PreviousVersion
		}
		qPreviousVersion := swag.FormatInt64(qrPreviousVersion)
		if qPreviousVersion != "" {
			if err := r.SetQueryParam("previousVersion", qPreviousVersion); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
