// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package leaderboard_data

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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

// NewDeleteUserRankingsAdminV1Params creates a new DeleteUserRankingsAdminV1Params object
// with the default values initialized.
func NewDeleteUserRankingsAdminV1Params() *DeleteUserRankingsAdminV1Params {
	var ()
	return &DeleteUserRankingsAdminV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteUserRankingsAdminV1ParamsWithTimeout creates a new DeleteUserRankingsAdminV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteUserRankingsAdminV1ParamsWithTimeout(timeout time.Duration) *DeleteUserRankingsAdminV1Params {
	var ()
	return &DeleteUserRankingsAdminV1Params{

		timeout: timeout,
	}
}

// NewDeleteUserRankingsAdminV1ParamsWithContext creates a new DeleteUserRankingsAdminV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteUserRankingsAdminV1ParamsWithContext(ctx context.Context) *DeleteUserRankingsAdminV1Params {
	var ()
	return &DeleteUserRankingsAdminV1Params{

		Context: ctx,
	}
}

// NewDeleteUserRankingsAdminV1ParamsWithHTTPClient creates a new DeleteUserRankingsAdminV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteUserRankingsAdminV1ParamsWithHTTPClient(client *http.Client) *DeleteUserRankingsAdminV1Params {
	var ()
	return &DeleteUserRankingsAdminV1Params{
		HTTPClient: client,
	}
}

/*DeleteUserRankingsAdminV1Params contains all the parameters to send to the API endpoint
for the delete user rankings admin v1 operation typically these are written to a http.Request
*/
type DeleteUserRankingsAdminV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*LeaderboardCode
	  the human readable unique code to identify the leaderboard. Must be lowercase and maximum length is 48. At least one leaderboard code MUST be provided

	*/
	LeaderboardCode []string
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

// WithTimeout adds the timeout to the delete user rankings admin v1 params
func (o *DeleteUserRankingsAdminV1Params) WithTimeout(timeout time.Duration) *DeleteUserRankingsAdminV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete user rankings admin v1 params
func (o *DeleteUserRankingsAdminV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete user rankings admin v1 params
func (o *DeleteUserRankingsAdminV1Params) WithContext(ctx context.Context) *DeleteUserRankingsAdminV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete user rankings admin v1 params
func (o *DeleteUserRankingsAdminV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete user rankings admin v1 params
func (o *DeleteUserRankingsAdminV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete user rankings admin v1 params
func (o *DeleteUserRankingsAdminV1Params) WithHTTPClient(client *http.Client) *DeleteUserRankingsAdminV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete user rankings admin v1 params
func (o *DeleteUserRankingsAdminV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete user rankings admin v1 params
func (o *DeleteUserRankingsAdminV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithLeaderboardCode adds the leaderboardCode to the delete user rankings admin v1 params
func (o *DeleteUserRankingsAdminV1Params) WithLeaderboardCode(leaderboardCode []string) *DeleteUserRankingsAdminV1Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the delete user rankings admin v1 params
func (o *DeleteUserRankingsAdminV1Params) SetLeaderboardCode(leaderboardCode []string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the delete user rankings admin v1 params
func (o *DeleteUserRankingsAdminV1Params) WithNamespace(namespace string) *DeleteUserRankingsAdminV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete user rankings admin v1 params
func (o *DeleteUserRankingsAdminV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the delete user rankings admin v1 params
func (o *DeleteUserRankingsAdminV1Params) WithUserID(userID string) *DeleteUserRankingsAdminV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete user rankings admin v1 params
func (o *DeleteUserRankingsAdminV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteUserRankingsAdminV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	valuesLeaderboardCode := o.LeaderboardCode

	joinedLeaderboardCode := swag.JoinByFormat(valuesLeaderboardCode, "multi")
	// query array param leaderboardCode
	if err := r.SetQueryParam("leaderboardCode", joinedLeaderboardCode...); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
