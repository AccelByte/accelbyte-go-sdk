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

// NewDeleteUserRankingByCycleIDAdminV3Params creates a new DeleteUserRankingByCycleIDAdminV3Params object
// with the default values initialized.
func NewDeleteUserRankingByCycleIDAdminV3Params() *DeleteUserRankingByCycleIDAdminV3Params {
	var ()
	return &DeleteUserRankingByCycleIDAdminV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteUserRankingByCycleIDAdminV3ParamsWithTimeout creates a new DeleteUserRankingByCycleIDAdminV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteUserRankingByCycleIDAdminV3ParamsWithTimeout(timeout time.Duration) *DeleteUserRankingByCycleIDAdminV3Params {
	var ()
	return &DeleteUserRankingByCycleIDAdminV3Params{

		timeout: timeout,
	}
}

// NewDeleteUserRankingByCycleIDAdminV3ParamsWithContext creates a new DeleteUserRankingByCycleIDAdminV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteUserRankingByCycleIDAdminV3ParamsWithContext(ctx context.Context) *DeleteUserRankingByCycleIDAdminV3Params {
	var ()
	return &DeleteUserRankingByCycleIDAdminV3Params{

		Context: ctx,
	}
}

// NewDeleteUserRankingByCycleIDAdminV3ParamsWithHTTPClient creates a new DeleteUserRankingByCycleIDAdminV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteUserRankingByCycleIDAdminV3ParamsWithHTTPClient(client *http.Client) *DeleteUserRankingByCycleIDAdminV3Params {
	var ()
	return &DeleteUserRankingByCycleIDAdminV3Params{
		HTTPClient: client,
	}
}

/*DeleteUserRankingByCycleIDAdminV3Params contains all the parameters to send to the API endpoint
for the delete user ranking by cycle id admin v3 operation typically these are written to a http.Request
*/
type DeleteUserRankingByCycleIDAdminV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CycleID
	  human readable unique code to identify cycles.

	*/
	CycleID string
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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete user ranking by cycle id admin v3 params
func (o *DeleteUserRankingByCycleIDAdminV3Params) WithTimeout(timeout time.Duration) *DeleteUserRankingByCycleIDAdminV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete user ranking by cycle id admin v3 params
func (o *DeleteUserRankingByCycleIDAdminV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete user ranking by cycle id admin v3 params
func (o *DeleteUserRankingByCycleIDAdminV3Params) WithContext(ctx context.Context) *DeleteUserRankingByCycleIDAdminV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete user ranking by cycle id admin v3 params
func (o *DeleteUserRankingByCycleIDAdminV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete user ranking by cycle id admin v3 params
func (o *DeleteUserRankingByCycleIDAdminV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete user ranking by cycle id admin v3 params
func (o *DeleteUserRankingByCycleIDAdminV3Params) WithHTTPClient(client *http.Client) *DeleteUserRankingByCycleIDAdminV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete user ranking by cycle id admin v3 params
func (o *DeleteUserRankingByCycleIDAdminV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete user ranking by cycle id admin v3 params
func (o *DeleteUserRankingByCycleIDAdminV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteUserRankingByCycleIDAdminV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCycleID adds the cycleID to the delete user ranking by cycle id admin v3 params
func (o *DeleteUserRankingByCycleIDAdminV3Params) WithCycleID(cycleID string) *DeleteUserRankingByCycleIDAdminV3Params {
	o.SetCycleID(cycleID)
	return o
}

// SetCycleID adds the cycleId to the delete user ranking by cycle id admin v3 params
func (o *DeleteUserRankingByCycleIDAdminV3Params) SetCycleID(cycleID string) {
	o.CycleID = cycleID
}

// WithLeaderboardCode adds the leaderboardCode to the delete user ranking by cycle id admin v3 params
func (o *DeleteUserRankingByCycleIDAdminV3Params) WithLeaderboardCode(leaderboardCode string) *DeleteUserRankingByCycleIDAdminV3Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the delete user ranking by cycle id admin v3 params
func (o *DeleteUserRankingByCycleIDAdminV3Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the delete user ranking by cycle id admin v3 params
func (o *DeleteUserRankingByCycleIDAdminV3Params) WithNamespace(namespace string) *DeleteUserRankingByCycleIDAdminV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete user ranking by cycle id admin v3 params
func (o *DeleteUserRankingByCycleIDAdminV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the delete user ranking by cycle id admin v3 params
func (o *DeleteUserRankingByCycleIDAdminV3Params) WithUserID(userID string) *DeleteUserRankingByCycleIDAdminV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete user ranking by cycle id admin v3 params
func (o *DeleteUserRankingByCycleIDAdminV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteUserRankingByCycleIDAdminV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param cycleId
	if err := r.SetPathParam("cycleId", o.CycleID); err != nil {
		return err
	}

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
