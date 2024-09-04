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

// NewDeleteAllUserRankingByCycleIDAdminV3Params creates a new DeleteAllUserRankingByCycleIDAdminV3Params object
// with the default values initialized.
func NewDeleteAllUserRankingByCycleIDAdminV3Params() *DeleteAllUserRankingByCycleIDAdminV3Params {
	var ()
	return &DeleteAllUserRankingByCycleIDAdminV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteAllUserRankingByCycleIDAdminV3ParamsWithTimeout creates a new DeleteAllUserRankingByCycleIDAdminV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteAllUserRankingByCycleIDAdminV3ParamsWithTimeout(timeout time.Duration) *DeleteAllUserRankingByCycleIDAdminV3Params {
	var ()
	return &DeleteAllUserRankingByCycleIDAdminV3Params{

		timeout: timeout,
	}
}

// NewDeleteAllUserRankingByCycleIDAdminV3ParamsWithContext creates a new DeleteAllUserRankingByCycleIDAdminV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteAllUserRankingByCycleIDAdminV3ParamsWithContext(ctx context.Context) *DeleteAllUserRankingByCycleIDAdminV3Params {
	var ()
	return &DeleteAllUserRankingByCycleIDAdminV3Params{

		Context: ctx,
	}
}

// NewDeleteAllUserRankingByCycleIDAdminV3ParamsWithHTTPClient creates a new DeleteAllUserRankingByCycleIDAdminV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteAllUserRankingByCycleIDAdminV3ParamsWithHTTPClient(client *http.Client) *DeleteAllUserRankingByCycleIDAdminV3Params {
	var ()
	return &DeleteAllUserRankingByCycleIDAdminV3Params{
		HTTPClient: client,
	}
}

/*DeleteAllUserRankingByCycleIDAdminV3Params contains all the parameters to send to the API endpoint
for the delete all user ranking by cycle id admin v3 operation typically these are written to a http.Request
*/
type DeleteAllUserRankingByCycleIDAdminV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CycleID
	  human readable unique code to identify cycles.

	*/
	CycleID string
	/*LeaderboardCode
	  human readable unique code to identify leaderboard. Must be lowercase and maximum length is 48

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete all user ranking by cycle id admin v3 params
func (o *DeleteAllUserRankingByCycleIDAdminV3Params) WithTimeout(timeout time.Duration) *DeleteAllUserRankingByCycleIDAdminV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete all user ranking by cycle id admin v3 params
func (o *DeleteAllUserRankingByCycleIDAdminV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete all user ranking by cycle id admin v3 params
func (o *DeleteAllUserRankingByCycleIDAdminV3Params) WithContext(ctx context.Context) *DeleteAllUserRankingByCycleIDAdminV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete all user ranking by cycle id admin v3 params
func (o *DeleteAllUserRankingByCycleIDAdminV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete all user ranking by cycle id admin v3 params
func (o *DeleteAllUserRankingByCycleIDAdminV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete all user ranking by cycle id admin v3 params
func (o *DeleteAllUserRankingByCycleIDAdminV3Params) WithHTTPClient(client *http.Client) *DeleteAllUserRankingByCycleIDAdminV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete all user ranking by cycle id admin v3 params
func (o *DeleteAllUserRankingByCycleIDAdminV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete all user ranking by cycle id admin v3 params
func (o *DeleteAllUserRankingByCycleIDAdminV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteAllUserRankingByCycleIDAdminV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCycleID adds the cycleID to the delete all user ranking by cycle id admin v3 params
func (o *DeleteAllUserRankingByCycleIDAdminV3Params) WithCycleID(cycleID string) *DeleteAllUserRankingByCycleIDAdminV3Params {
	o.SetCycleID(cycleID)
	return o
}

// SetCycleID adds the cycleId to the delete all user ranking by cycle id admin v3 params
func (o *DeleteAllUserRankingByCycleIDAdminV3Params) SetCycleID(cycleID string) {
	o.CycleID = cycleID
}

// WithLeaderboardCode adds the leaderboardCode to the delete all user ranking by cycle id admin v3 params
func (o *DeleteAllUserRankingByCycleIDAdminV3Params) WithLeaderboardCode(leaderboardCode string) *DeleteAllUserRankingByCycleIDAdminV3Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the delete all user ranking by cycle id admin v3 params
func (o *DeleteAllUserRankingByCycleIDAdminV3Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the delete all user ranking by cycle id admin v3 params
func (o *DeleteAllUserRankingByCycleIDAdminV3Params) WithNamespace(namespace string) *DeleteAllUserRankingByCycleIDAdminV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete all user ranking by cycle id admin v3 params
func (o *DeleteAllUserRankingByCycleIDAdminV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteAllUserRankingByCycleIDAdminV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
