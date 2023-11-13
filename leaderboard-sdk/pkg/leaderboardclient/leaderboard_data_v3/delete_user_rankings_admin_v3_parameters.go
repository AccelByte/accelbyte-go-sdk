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

// NewDeleteUserRankingsAdminV3Params creates a new DeleteUserRankingsAdminV3Params object
// with the default values initialized.
func NewDeleteUserRankingsAdminV3Params() *DeleteUserRankingsAdminV3Params {
	var ()
	return &DeleteUserRankingsAdminV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteUserRankingsAdminV3ParamsWithTimeout creates a new DeleteUserRankingsAdminV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteUserRankingsAdminV3ParamsWithTimeout(timeout time.Duration) *DeleteUserRankingsAdminV3Params {
	var ()
	return &DeleteUserRankingsAdminV3Params{

		timeout: timeout,
	}
}

// NewDeleteUserRankingsAdminV3ParamsWithContext creates a new DeleteUserRankingsAdminV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteUserRankingsAdminV3ParamsWithContext(ctx context.Context) *DeleteUserRankingsAdminV3Params {
	var ()
	return &DeleteUserRankingsAdminV3Params{

		Context: ctx,
	}
}

// NewDeleteUserRankingsAdminV3ParamsWithHTTPClient creates a new DeleteUserRankingsAdminV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteUserRankingsAdminV3ParamsWithHTTPClient(client *http.Client) *DeleteUserRankingsAdminV3Params {
	var ()
	return &DeleteUserRankingsAdminV3Params{
		HTTPClient: client,
	}
}

/*DeleteUserRankingsAdminV3Params contains all the parameters to send to the API endpoint
for the delete user rankings admin v3 operation typically these are written to a http.Request
*/
type DeleteUserRankingsAdminV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  User ID used for leaderboard entry

	*/
	UserID string
	/*LeaderboardCode
	  the human readable unique code to identify the leaderboard. Must be lowercase and maximum length is 48. At least one leaderboard code MUST be provided

	*/
	LeaderboardCode []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete user rankings admin v3 params
func (o *DeleteUserRankingsAdminV3Params) WithTimeout(timeout time.Duration) *DeleteUserRankingsAdminV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete user rankings admin v3 params
func (o *DeleteUserRankingsAdminV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete user rankings admin v3 params
func (o *DeleteUserRankingsAdminV3Params) WithContext(ctx context.Context) *DeleteUserRankingsAdminV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete user rankings admin v3 params
func (o *DeleteUserRankingsAdminV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete user rankings admin v3 params
func (o *DeleteUserRankingsAdminV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete user rankings admin v3 params
func (o *DeleteUserRankingsAdminV3Params) WithHTTPClient(client *http.Client) *DeleteUserRankingsAdminV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete user rankings admin v3 params
func (o *DeleteUserRankingsAdminV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete user rankings admin v3 params
func (o *DeleteUserRankingsAdminV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete user rankings admin v3 params
func (o *DeleteUserRankingsAdminV3Params) WithNamespace(namespace string) *DeleteUserRankingsAdminV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete user rankings admin v3 params
func (o *DeleteUserRankingsAdminV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the delete user rankings admin v3 params
func (o *DeleteUserRankingsAdminV3Params) WithUserID(userID string) *DeleteUserRankingsAdminV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete user rankings admin v3 params
func (o *DeleteUserRankingsAdminV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WithLeaderboardCode adds the leaderboardCode to the delete user rankings admin v3 params
func (o *DeleteUserRankingsAdminV3Params) WithLeaderboardCode(leaderboardCode []string) *DeleteUserRankingsAdminV3Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the delete user rankings admin v3 params
func (o *DeleteUserRankingsAdminV3Params) SetLeaderboardCode(leaderboardCode []string) {
	o.LeaderboardCode = leaderboardCode
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteUserRankingsAdminV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	valuesLeaderboardCode := o.LeaderboardCode

	joinedLeaderboardCode := swag.JoinByFormat(valuesLeaderboardCode, "multi")
	// query array param leaderboardCode
	if err := r.SetQueryParam("leaderboardCode", joinedLeaderboardCode...); err != nil {
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
