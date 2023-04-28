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

// NewDeleteUserRankingAdminV1Params creates a new DeleteUserRankingAdminV1Params object
// with the default values initialized.
func NewDeleteUserRankingAdminV1Params() *DeleteUserRankingAdminV1Params {
	var ()
	return &DeleteUserRankingAdminV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteUserRankingAdminV1ParamsWithTimeout creates a new DeleteUserRankingAdminV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteUserRankingAdminV1ParamsWithTimeout(timeout time.Duration) *DeleteUserRankingAdminV1Params {
	var ()
	return &DeleteUserRankingAdminV1Params{

		timeout: timeout,
	}
}

// NewDeleteUserRankingAdminV1ParamsWithContext creates a new DeleteUserRankingAdminV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteUserRankingAdminV1ParamsWithContext(ctx context.Context) *DeleteUserRankingAdminV1Params {
	var ()
	return &DeleteUserRankingAdminV1Params{

		Context: ctx,
	}
}

// NewDeleteUserRankingAdminV1ParamsWithHTTPClient creates a new DeleteUserRankingAdminV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteUserRankingAdminV1ParamsWithHTTPClient(client *http.Client) *DeleteUserRankingAdminV1Params {
	var ()
	return &DeleteUserRankingAdminV1Params{
		HTTPClient: client,
	}
}

/*DeleteUserRankingAdminV1Params contains all the parameters to send to the API endpoint
for the delete user ranking admin v1 operation typically these are written to a http.Request
*/
type DeleteUserRankingAdminV1Params struct {

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
	  User ID used for leaderboard entry

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete user ranking admin v1 params
func (o *DeleteUserRankingAdminV1Params) WithTimeout(timeout time.Duration) *DeleteUserRankingAdminV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete user ranking admin v1 params
func (o *DeleteUserRankingAdminV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete user ranking admin v1 params
func (o *DeleteUserRankingAdminV1Params) WithContext(ctx context.Context) *DeleteUserRankingAdminV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete user ranking admin v1 params
func (o *DeleteUserRankingAdminV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete user ranking admin v1 params
func (o *DeleteUserRankingAdminV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete user ranking admin v1 params
func (o *DeleteUserRankingAdminV1Params) WithHTTPClient(client *http.Client) *DeleteUserRankingAdminV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete user ranking admin v1 params
func (o *DeleteUserRankingAdminV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete user ranking admin v1 params
func (o *DeleteUserRankingAdminV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithLeaderboardCode adds the leaderboardCode to the delete user ranking admin v1 params
func (o *DeleteUserRankingAdminV1Params) WithLeaderboardCode(leaderboardCode string) *DeleteUserRankingAdminV1Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the delete user ranking admin v1 params
func (o *DeleteUserRankingAdminV1Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the delete user ranking admin v1 params
func (o *DeleteUserRankingAdminV1Params) WithNamespace(namespace string) *DeleteUserRankingAdminV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete user ranking admin v1 params
func (o *DeleteUserRankingAdminV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the delete user ranking admin v1 params
func (o *DeleteUserRankingAdminV1Params) WithUserID(userID string) *DeleteUserRankingAdminV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete user ranking admin v1 params
func (o *DeleteUserRankingAdminV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteUserRankingAdminV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
