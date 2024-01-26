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
)

// NewAdminGetArchivedLeaderboardRankingDataV1HandlerParams creates a new AdminGetArchivedLeaderboardRankingDataV1HandlerParams object
// with the default values initialized.
func NewAdminGetArchivedLeaderboardRankingDataV1HandlerParams() *AdminGetArchivedLeaderboardRankingDataV1HandlerParams {
	var ()
	return &AdminGetArchivedLeaderboardRankingDataV1HandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetArchivedLeaderboardRankingDataV1HandlerParamsWithTimeout creates a new AdminGetArchivedLeaderboardRankingDataV1HandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetArchivedLeaderboardRankingDataV1HandlerParamsWithTimeout(timeout time.Duration) *AdminGetArchivedLeaderboardRankingDataV1HandlerParams {
	var ()
	return &AdminGetArchivedLeaderboardRankingDataV1HandlerParams{

		timeout: timeout,
	}
}

// NewAdminGetArchivedLeaderboardRankingDataV1HandlerParamsWithContext creates a new AdminGetArchivedLeaderboardRankingDataV1HandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetArchivedLeaderboardRankingDataV1HandlerParamsWithContext(ctx context.Context) *AdminGetArchivedLeaderboardRankingDataV1HandlerParams {
	var ()
	return &AdminGetArchivedLeaderboardRankingDataV1HandlerParams{

		Context: ctx,
	}
}

// NewAdminGetArchivedLeaderboardRankingDataV1HandlerParamsWithHTTPClient creates a new AdminGetArchivedLeaderboardRankingDataV1HandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetArchivedLeaderboardRankingDataV1HandlerParamsWithHTTPClient(client *http.Client) *AdminGetArchivedLeaderboardRankingDataV1HandlerParams {
	var ()
	return &AdminGetArchivedLeaderboardRankingDataV1HandlerParams{
		HTTPClient: client,
	}
}

/*AdminGetArchivedLeaderboardRankingDataV1HandlerParams contains all the parameters to send to the API endpoint
for the admin get archived leaderboard ranking data v1 handler operation typically these are written to a http.Request
*/
type AdminGetArchivedLeaderboardRankingDataV1HandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Slug
	  slug type of leaderboard

	*/
	Slug *string
	/*LeaderboardCodes
	  list of leaderboard codes split by comma

	*/
	LeaderboardCodes string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get archived leaderboard ranking data v1 handler params
func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerParams) WithTimeout(timeout time.Duration) *AdminGetArchivedLeaderboardRankingDataV1HandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get archived leaderboard ranking data v1 handler params
func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get archived leaderboard ranking data v1 handler params
func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerParams) WithContext(ctx context.Context) *AdminGetArchivedLeaderboardRankingDataV1HandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get archived leaderboard ranking data v1 handler params
func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get archived leaderboard ranking data v1 handler params
func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get archived leaderboard ranking data v1 handler params
func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerParams) WithHTTPClient(client *http.Client) *AdminGetArchivedLeaderboardRankingDataV1HandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get archived leaderboard ranking data v1 handler params
func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get archived leaderboard ranking data v1 handler params
func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get archived leaderboard ranking data v1 handler params
func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerParams) WithNamespace(namespace string) *AdminGetArchivedLeaderboardRankingDataV1HandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get archived leaderboard ranking data v1 handler params
func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSlug adds the slug to the admin get archived leaderboard ranking data v1 handler params
func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerParams) WithSlug(slug *string) *AdminGetArchivedLeaderboardRankingDataV1HandlerParams {
	o.SetSlug(slug)
	return o
}

// SetSlug adds the slug to the admin get archived leaderboard ranking data v1 handler params
func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerParams) SetSlug(slug *string) {
	o.Slug = slug
}

// WithLeaderboardCodes adds the leaderboardCodes to the admin get archived leaderboard ranking data v1 handler params
func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerParams) WithLeaderboardCodes(leaderboardCodes string) *AdminGetArchivedLeaderboardRankingDataV1HandlerParams {
	o.SetLeaderboardCodes(leaderboardCodes)
	return o
}

// SetLeaderboardCodes adds the leaderboardCodes to the admin get archived leaderboard ranking data v1 handler params
func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerParams) SetLeaderboardCodes(leaderboardCodes string) {
	o.LeaderboardCodes = leaderboardCodes
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetArchivedLeaderboardRankingDataV1HandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Slug != nil {

		// query param slug
		var qrSlug string
		if o.Slug != nil {
			qrSlug = *o.Slug
		}
		qSlug := qrSlug
		if qSlug != "" {
			if err := r.SetQueryParam("slug", qSlug); err != nil {
				return err
			}
		}

	}

	// query param leaderboardCodes
	qrLeaderboardCodes := o.LeaderboardCodes
	qLeaderboardCodes := qrLeaderboardCodes
	if qLeaderboardCodes != "" {
		if err := r.SetQueryParam("leaderboardCodes", qLeaderboardCodes); err != nil {
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
