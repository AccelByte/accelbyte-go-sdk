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

// NewGetUserRankingPublicV1Params creates a new GetUserRankingPublicV1Params object
// with the default values initialized.
func NewGetUserRankingPublicV1Params() *GetUserRankingPublicV1Params {
	var ()
	return &GetUserRankingPublicV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserRankingPublicV1ParamsWithTimeout creates a new GetUserRankingPublicV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserRankingPublicV1ParamsWithTimeout(timeout time.Duration) *GetUserRankingPublicV1Params {
	var ()
	return &GetUserRankingPublicV1Params{

		timeout: timeout,
	}
}

// NewGetUserRankingPublicV1ParamsWithContext creates a new GetUserRankingPublicV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserRankingPublicV1ParamsWithContext(ctx context.Context) *GetUserRankingPublicV1Params {
	var ()
	return &GetUserRankingPublicV1Params{

		Context: ctx,
	}
}

// NewGetUserRankingPublicV1ParamsWithHTTPClient creates a new GetUserRankingPublicV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserRankingPublicV1ParamsWithHTTPClient(client *http.Client) *GetUserRankingPublicV1Params {
	var ()
	return &GetUserRankingPublicV1Params{
		HTTPClient: client,
	}
}

/*GetUserRankingPublicV1Params contains all the parameters to send to the API endpoint
for the get user ranking public v1 operation typically these are written to a http.Request
*/
type GetUserRankingPublicV1Params struct {

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

// WithTimeout adds the timeout to the get user ranking public v1 params
func (o *GetUserRankingPublicV1Params) WithTimeout(timeout time.Duration) *GetUserRankingPublicV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user ranking public v1 params
func (o *GetUserRankingPublicV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user ranking public v1 params
func (o *GetUserRankingPublicV1Params) WithContext(ctx context.Context) *GetUserRankingPublicV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user ranking public v1 params
func (o *GetUserRankingPublicV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user ranking public v1 params
func (o *GetUserRankingPublicV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user ranking public v1 params
func (o *GetUserRankingPublicV1Params) WithHTTPClient(client *http.Client) *GetUserRankingPublicV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user ranking public v1 params
func (o *GetUserRankingPublicV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user ranking public v1 params
func (o *GetUserRankingPublicV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithLeaderboardCode adds the leaderboardCode to the get user ranking public v1 params
func (o *GetUserRankingPublicV1Params) WithLeaderboardCode(leaderboardCode string) *GetUserRankingPublicV1Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the get user ranking public v1 params
func (o *GetUserRankingPublicV1Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the get user ranking public v1 params
func (o *GetUserRankingPublicV1Params) WithNamespace(namespace string) *GetUserRankingPublicV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user ranking public v1 params
func (o *GetUserRankingPublicV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user ranking public v1 params
func (o *GetUserRankingPublicV1Params) WithUserID(userID string) *GetUserRankingPublicV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user ranking public v1 params
func (o *GetUserRankingPublicV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserRankingPublicV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
