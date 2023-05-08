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
)

// NewGetUserRankingPublicV3Params creates a new GetUserRankingPublicV3Params object
// with the default values initialized.
func NewGetUserRankingPublicV3Params() *GetUserRankingPublicV3Params {
	var ()
	return &GetUserRankingPublicV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserRankingPublicV3ParamsWithTimeout creates a new GetUserRankingPublicV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserRankingPublicV3ParamsWithTimeout(timeout time.Duration) *GetUserRankingPublicV3Params {
	var ()
	return &GetUserRankingPublicV3Params{

		timeout: timeout,
	}
}

// NewGetUserRankingPublicV3ParamsWithContext creates a new GetUserRankingPublicV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserRankingPublicV3ParamsWithContext(ctx context.Context) *GetUserRankingPublicV3Params {
	var ()
	return &GetUserRankingPublicV3Params{

		Context: ctx,
	}
}

// NewGetUserRankingPublicV3ParamsWithHTTPClient creates a new GetUserRankingPublicV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserRankingPublicV3ParamsWithHTTPClient(client *http.Client) *GetUserRankingPublicV3Params {
	var ()
	return &GetUserRankingPublicV3Params{
		HTTPClient: client,
	}
}

/*GetUserRankingPublicV3Params contains all the parameters to send to the API endpoint
for the get user ranking public v3 operation typically these are written to a http.Request
*/
type GetUserRankingPublicV3Params struct {

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
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get user ranking public v3 params
func (o *GetUserRankingPublicV3Params) WithTimeout(timeout time.Duration) *GetUserRankingPublicV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user ranking public v3 params
func (o *GetUserRankingPublicV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user ranking public v3 params
func (o *GetUserRankingPublicV3Params) WithContext(ctx context.Context) *GetUserRankingPublicV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user ranking public v3 params
func (o *GetUserRankingPublicV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user ranking public v3 params
func (o *GetUserRankingPublicV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user ranking public v3 params
func (o *GetUserRankingPublicV3Params) WithHTTPClient(client *http.Client) *GetUserRankingPublicV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user ranking public v3 params
func (o *GetUserRankingPublicV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user ranking public v3 params
func (o *GetUserRankingPublicV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithLeaderboardCode adds the leaderboardCode to the get user ranking public v3 params
func (o *GetUserRankingPublicV3Params) WithLeaderboardCode(leaderboardCode string) *GetUserRankingPublicV3Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the get user ranking public v3 params
func (o *GetUserRankingPublicV3Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the get user ranking public v3 params
func (o *GetUserRankingPublicV3Params) WithNamespace(namespace string) *GetUserRankingPublicV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user ranking public v3 params
func (o *GetUserRankingPublicV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user ranking public v3 params
func (o *GetUserRankingPublicV3Params) WithUserID(userID string) *GetUserRankingPublicV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user ranking public v3 params
func (o *GetUserRankingPublicV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserRankingPublicV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
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
