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

// NewDeleteUserRankingByLeaderboardCodeAdminV3Params creates a new DeleteUserRankingByLeaderboardCodeAdminV3Params object
// with the default values initialized.
func NewDeleteUserRankingByLeaderboardCodeAdminV3Params() *DeleteUserRankingByLeaderboardCodeAdminV3Params {
	var ()
	return &DeleteUserRankingByLeaderboardCodeAdminV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteUserRankingByLeaderboardCodeAdminV3ParamsWithTimeout creates a new DeleteUserRankingByLeaderboardCodeAdminV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteUserRankingByLeaderboardCodeAdminV3ParamsWithTimeout(timeout time.Duration) *DeleteUserRankingByLeaderboardCodeAdminV3Params {
	var ()
	return &DeleteUserRankingByLeaderboardCodeAdminV3Params{

		timeout: timeout,
	}
}

// NewDeleteUserRankingByLeaderboardCodeAdminV3ParamsWithContext creates a new DeleteUserRankingByLeaderboardCodeAdminV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteUserRankingByLeaderboardCodeAdminV3ParamsWithContext(ctx context.Context) *DeleteUserRankingByLeaderboardCodeAdminV3Params {
	var ()
	return &DeleteUserRankingByLeaderboardCodeAdminV3Params{

		Context: ctx,
	}
}

// NewDeleteUserRankingByLeaderboardCodeAdminV3ParamsWithHTTPClient creates a new DeleteUserRankingByLeaderboardCodeAdminV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteUserRankingByLeaderboardCodeAdminV3ParamsWithHTTPClient(client *http.Client) *DeleteUserRankingByLeaderboardCodeAdminV3Params {
	var ()
	return &DeleteUserRankingByLeaderboardCodeAdminV3Params{
		HTTPClient: client,
	}
}

/*DeleteUserRankingByLeaderboardCodeAdminV3Params contains all the parameters to send to the API endpoint
for the delete user ranking by leaderboard code admin v3 operation typically these are written to a http.Request
*/
type DeleteUserRankingByLeaderboardCodeAdminV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*LeaderboardCode
	  human readable unique code to indentify leaderboard. Must be lowercase and maximum length is 48

	*/
	LeaderboardCode string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete user ranking by leaderboard code admin v3 params
func (o *DeleteUserRankingByLeaderboardCodeAdminV3Params) WithTimeout(timeout time.Duration) *DeleteUserRankingByLeaderboardCodeAdminV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete user ranking by leaderboard code admin v3 params
func (o *DeleteUserRankingByLeaderboardCodeAdminV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete user ranking by leaderboard code admin v3 params
func (o *DeleteUserRankingByLeaderboardCodeAdminV3Params) WithContext(ctx context.Context) *DeleteUserRankingByLeaderboardCodeAdminV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete user ranking by leaderboard code admin v3 params
func (o *DeleteUserRankingByLeaderboardCodeAdminV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete user ranking by leaderboard code admin v3 params
func (o *DeleteUserRankingByLeaderboardCodeAdminV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete user ranking by leaderboard code admin v3 params
func (o *DeleteUserRankingByLeaderboardCodeAdminV3Params) WithHTTPClient(client *http.Client) *DeleteUserRankingByLeaderboardCodeAdminV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete user ranking by leaderboard code admin v3 params
func (o *DeleteUserRankingByLeaderboardCodeAdminV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete user ranking by leaderboard code admin v3 params
func (o *DeleteUserRankingByLeaderboardCodeAdminV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithLeaderboardCode adds the leaderboardCode to the delete user ranking by leaderboard code admin v3 params
func (o *DeleteUserRankingByLeaderboardCodeAdminV3Params) WithLeaderboardCode(leaderboardCode string) *DeleteUserRankingByLeaderboardCodeAdminV3Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the delete user ranking by leaderboard code admin v3 params
func (o *DeleteUserRankingByLeaderboardCodeAdminV3Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the delete user ranking by leaderboard code admin v3 params
func (o *DeleteUserRankingByLeaderboardCodeAdminV3Params) WithNamespace(namespace string) *DeleteUserRankingByLeaderboardCodeAdminV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete user ranking by leaderboard code admin v3 params
func (o *DeleteUserRankingByLeaderboardCodeAdminV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteUserRankingByLeaderboardCodeAdminV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
