// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboard_configuration

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

// NewDeleteLeaderboardConfigurationAdminV1Params creates a new DeleteLeaderboardConfigurationAdminV1Params object
// with the default values initialized.
func NewDeleteLeaderboardConfigurationAdminV1Params() *DeleteLeaderboardConfigurationAdminV1Params {
	var ()
	return &DeleteLeaderboardConfigurationAdminV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteLeaderboardConfigurationAdminV1ParamsWithTimeout creates a new DeleteLeaderboardConfigurationAdminV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteLeaderboardConfigurationAdminV1ParamsWithTimeout(timeout time.Duration) *DeleteLeaderboardConfigurationAdminV1Params {
	var ()
	return &DeleteLeaderboardConfigurationAdminV1Params{

		timeout: timeout,
	}
}

// NewDeleteLeaderboardConfigurationAdminV1ParamsWithContext creates a new DeleteLeaderboardConfigurationAdminV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteLeaderboardConfigurationAdminV1ParamsWithContext(ctx context.Context) *DeleteLeaderboardConfigurationAdminV1Params {
	var ()
	return &DeleteLeaderboardConfigurationAdminV1Params{

		Context: ctx,
	}
}

// NewDeleteLeaderboardConfigurationAdminV1ParamsWithHTTPClient creates a new DeleteLeaderboardConfigurationAdminV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteLeaderboardConfigurationAdminV1ParamsWithHTTPClient(client *http.Client) *DeleteLeaderboardConfigurationAdminV1Params {
	var ()
	return &DeleteLeaderboardConfigurationAdminV1Params{
		HTTPClient: client,
	}
}

/*DeleteLeaderboardConfigurationAdminV1Params contains all the parameters to send to the API endpoint
for the delete leaderboard configuration admin v1 operation typically these are written to a http.Request
*/
type DeleteLeaderboardConfigurationAdminV1Params struct {

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

// WithTimeout adds the timeout to the delete leaderboard configuration admin v1 params
func (o *DeleteLeaderboardConfigurationAdminV1Params) WithTimeout(timeout time.Duration) *DeleteLeaderboardConfigurationAdminV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete leaderboard configuration admin v1 params
func (o *DeleteLeaderboardConfigurationAdminV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete leaderboard configuration admin v1 params
func (o *DeleteLeaderboardConfigurationAdminV1Params) WithContext(ctx context.Context) *DeleteLeaderboardConfigurationAdminV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete leaderboard configuration admin v1 params
func (o *DeleteLeaderboardConfigurationAdminV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete leaderboard configuration admin v1 params
func (o *DeleteLeaderboardConfigurationAdminV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete leaderboard configuration admin v1 params
func (o *DeleteLeaderboardConfigurationAdminV1Params) WithHTTPClient(client *http.Client) *DeleteLeaderboardConfigurationAdminV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete leaderboard configuration admin v1 params
func (o *DeleteLeaderboardConfigurationAdminV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete leaderboard configuration admin v1 params
func (o *DeleteLeaderboardConfigurationAdminV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteLeaderboardConfigurationAdminV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithLeaderboardCode adds the leaderboardCode to the delete leaderboard configuration admin v1 params
func (o *DeleteLeaderboardConfigurationAdminV1Params) WithLeaderboardCode(leaderboardCode string) *DeleteLeaderboardConfigurationAdminV1Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the delete leaderboard configuration admin v1 params
func (o *DeleteLeaderboardConfigurationAdminV1Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the delete leaderboard configuration admin v1 params
func (o *DeleteLeaderboardConfigurationAdminV1Params) WithNamespace(namespace string) *DeleteLeaderboardConfigurationAdminV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete leaderboard configuration admin v1 params
func (o *DeleteLeaderboardConfigurationAdminV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteLeaderboardConfigurationAdminV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
