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

	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
)

// NewBulkGetUsersRankingPublicV3Params creates a new BulkGetUsersRankingPublicV3Params object
// with the default values initialized.
func NewBulkGetUsersRankingPublicV3Params() *BulkGetUsersRankingPublicV3Params {
	var ()
	return &BulkGetUsersRankingPublicV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkGetUsersRankingPublicV3ParamsWithTimeout creates a new BulkGetUsersRankingPublicV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkGetUsersRankingPublicV3ParamsWithTimeout(timeout time.Duration) *BulkGetUsersRankingPublicV3Params {
	var ()
	return &BulkGetUsersRankingPublicV3Params{

		timeout: timeout,
	}
}

// NewBulkGetUsersRankingPublicV3ParamsWithContext creates a new BulkGetUsersRankingPublicV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewBulkGetUsersRankingPublicV3ParamsWithContext(ctx context.Context) *BulkGetUsersRankingPublicV3Params {
	var ()
	return &BulkGetUsersRankingPublicV3Params{

		Context: ctx,
	}
}

// NewBulkGetUsersRankingPublicV3ParamsWithHTTPClient creates a new BulkGetUsersRankingPublicV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkGetUsersRankingPublicV3ParamsWithHTTPClient(client *http.Client) *BulkGetUsersRankingPublicV3Params {
	var ()
	return &BulkGetUsersRankingPublicV3Params{
		HTTPClient: client,
	}
}

/*BulkGetUsersRankingPublicV3Params contains all the parameters to send to the API endpoint
for the bulk get users ranking public v3 operation typically these are written to a http.Request
*/
type BulkGetUsersRankingPublicV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *leaderboardclientmodels.ModelsBulkUserIDsRequest
	/*LeaderboardCode
	  the human readable unique code to identify the leaderboard. Must be lowercase and maximum length is 48

	*/
	LeaderboardCode string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*PreviousVersion
	  Specify specific version of leaderboard data, If the value of version is more than 0, it’ll retrieve the achieved history of leaderboard data. For example, if value of PreviousVersionParam is 1, means it’ll fetch one previous version. Currently only support 1 previous version, default value will be 0 (active leaderboard)

	*/
	PreviousVersion *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the bulk get users ranking public v3 params
func (o *BulkGetUsersRankingPublicV3Params) WithTimeout(timeout time.Duration) *BulkGetUsersRankingPublicV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk get users ranking public v3 params
func (o *BulkGetUsersRankingPublicV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk get users ranking public v3 params
func (o *BulkGetUsersRankingPublicV3Params) WithContext(ctx context.Context) *BulkGetUsersRankingPublicV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk get users ranking public v3 params
func (o *BulkGetUsersRankingPublicV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk get users ranking public v3 params
func (o *BulkGetUsersRankingPublicV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk get users ranking public v3 params
func (o *BulkGetUsersRankingPublicV3Params) WithHTTPClient(client *http.Client) *BulkGetUsersRankingPublicV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk get users ranking public v3 params
func (o *BulkGetUsersRankingPublicV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk get users ranking public v3 params
func (o *BulkGetUsersRankingPublicV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *BulkGetUsersRankingPublicV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the bulk get users ranking public v3 params
func (o *BulkGetUsersRankingPublicV3Params) WithBody(body *leaderboardclientmodels.ModelsBulkUserIDsRequest) *BulkGetUsersRankingPublicV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the bulk get users ranking public v3 params
func (o *BulkGetUsersRankingPublicV3Params) SetBody(body *leaderboardclientmodels.ModelsBulkUserIDsRequest) {
	o.Body = body
}

// WithLeaderboardCode adds the leaderboardCode to the bulk get users ranking public v3 params
func (o *BulkGetUsersRankingPublicV3Params) WithLeaderboardCode(leaderboardCode string) *BulkGetUsersRankingPublicV3Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the bulk get users ranking public v3 params
func (o *BulkGetUsersRankingPublicV3Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the bulk get users ranking public v3 params
func (o *BulkGetUsersRankingPublicV3Params) WithNamespace(namespace string) *BulkGetUsersRankingPublicV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk get users ranking public v3 params
func (o *BulkGetUsersRankingPublicV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPreviousVersion adds the previousVersion to the bulk get users ranking public v3 params
func (o *BulkGetUsersRankingPublicV3Params) WithPreviousVersion(previousVersion *int64) *BulkGetUsersRankingPublicV3Params {
	o.SetPreviousVersion(previousVersion)
	return o
}

// SetPreviousVersion adds the previousVersion to the bulk get users ranking public v3 params
func (o *BulkGetUsersRankingPublicV3Params) SetPreviousVersion(previousVersion *int64) {
	o.PreviousVersion = previousVersion
}

// WriteToRequest writes these params to a swagger request
func (o *BulkGetUsersRankingPublicV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param leaderboardCode
	if err := r.SetPathParam("leaderboardCode", o.LeaderboardCode); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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
