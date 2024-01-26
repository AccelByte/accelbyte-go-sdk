// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboard_configuration_v3

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

// NewHardDeleteLeaderboardAdminV3Params creates a new HardDeleteLeaderboardAdminV3Params object
// with the default values initialized.
func NewHardDeleteLeaderboardAdminV3Params() *HardDeleteLeaderboardAdminV3Params {
	var ()
	return &HardDeleteLeaderboardAdminV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewHardDeleteLeaderboardAdminV3ParamsWithTimeout creates a new HardDeleteLeaderboardAdminV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewHardDeleteLeaderboardAdminV3ParamsWithTimeout(timeout time.Duration) *HardDeleteLeaderboardAdminV3Params {
	var ()
	return &HardDeleteLeaderboardAdminV3Params{

		timeout: timeout,
	}
}

// NewHardDeleteLeaderboardAdminV3ParamsWithContext creates a new HardDeleteLeaderboardAdminV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewHardDeleteLeaderboardAdminV3ParamsWithContext(ctx context.Context) *HardDeleteLeaderboardAdminV3Params {
	var ()
	return &HardDeleteLeaderboardAdminV3Params{

		Context: ctx,
	}
}

// NewHardDeleteLeaderboardAdminV3ParamsWithHTTPClient creates a new HardDeleteLeaderboardAdminV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewHardDeleteLeaderboardAdminV3ParamsWithHTTPClient(client *http.Client) *HardDeleteLeaderboardAdminV3Params {
	var ()
	return &HardDeleteLeaderboardAdminV3Params{
		HTTPClient: client,
	}
}

/*HardDeleteLeaderboardAdminV3Params contains all the parameters to send to the API endpoint
for the hard delete leaderboard admin v3 operation typically these are written to a http.Request
*/
type HardDeleteLeaderboardAdminV3Params struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the hard delete leaderboard admin v3 params
func (o *HardDeleteLeaderboardAdminV3Params) WithTimeout(timeout time.Duration) *HardDeleteLeaderboardAdminV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the hard delete leaderboard admin v3 params
func (o *HardDeleteLeaderboardAdminV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the hard delete leaderboard admin v3 params
func (o *HardDeleteLeaderboardAdminV3Params) WithContext(ctx context.Context) *HardDeleteLeaderboardAdminV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the hard delete leaderboard admin v3 params
func (o *HardDeleteLeaderboardAdminV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the hard delete leaderboard admin v3 params
func (o *HardDeleteLeaderboardAdminV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the hard delete leaderboard admin v3 params
func (o *HardDeleteLeaderboardAdminV3Params) WithHTTPClient(client *http.Client) *HardDeleteLeaderboardAdminV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the hard delete leaderboard admin v3 params
func (o *HardDeleteLeaderboardAdminV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the hard delete leaderboard admin v3 params
func (o *HardDeleteLeaderboardAdminV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *HardDeleteLeaderboardAdminV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithLeaderboardCode adds the leaderboardCode to the hard delete leaderboard admin v3 params
func (o *HardDeleteLeaderboardAdminV3Params) WithLeaderboardCode(leaderboardCode string) *HardDeleteLeaderboardAdminV3Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the hard delete leaderboard admin v3 params
func (o *HardDeleteLeaderboardAdminV3Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the hard delete leaderboard admin v3 params
func (o *HardDeleteLeaderboardAdminV3Params) WithNamespace(namespace string) *HardDeleteLeaderboardAdminV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the hard delete leaderboard admin v3 params
func (o *HardDeleteLeaderboardAdminV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *HardDeleteLeaderboardAdminV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
