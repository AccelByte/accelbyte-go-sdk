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

// NewDeleteLeaderboardConfigurationAdminV3Params creates a new DeleteLeaderboardConfigurationAdminV3Params object
// with the default values initialized.
func NewDeleteLeaderboardConfigurationAdminV3Params() *DeleteLeaderboardConfigurationAdminV3Params {
	var ()
	return &DeleteLeaderboardConfigurationAdminV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteLeaderboardConfigurationAdminV3ParamsWithTimeout creates a new DeleteLeaderboardConfigurationAdminV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteLeaderboardConfigurationAdminV3ParamsWithTimeout(timeout time.Duration) *DeleteLeaderboardConfigurationAdminV3Params {
	var ()
	return &DeleteLeaderboardConfigurationAdminV3Params{

		timeout: timeout,
	}
}

// NewDeleteLeaderboardConfigurationAdminV3ParamsWithContext creates a new DeleteLeaderboardConfigurationAdminV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteLeaderboardConfigurationAdminV3ParamsWithContext(ctx context.Context) *DeleteLeaderboardConfigurationAdminV3Params {
	var ()
	return &DeleteLeaderboardConfigurationAdminV3Params{

		Context: ctx,
	}
}

// NewDeleteLeaderboardConfigurationAdminV3ParamsWithHTTPClient creates a new DeleteLeaderboardConfigurationAdminV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteLeaderboardConfigurationAdminV3ParamsWithHTTPClient(client *http.Client) *DeleteLeaderboardConfigurationAdminV3Params {
	var ()
	return &DeleteLeaderboardConfigurationAdminV3Params{
		HTTPClient: client,
	}
}

/*DeleteLeaderboardConfigurationAdminV3Params contains all the parameters to send to the API endpoint
for the delete leaderboard configuration admin v3 operation typically these are written to a http.Request
*/
type DeleteLeaderboardConfigurationAdminV3Params struct {

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

// WithTimeout adds the timeout to the delete leaderboard configuration admin v3 params
func (o *DeleteLeaderboardConfigurationAdminV3Params) WithTimeout(timeout time.Duration) *DeleteLeaderboardConfigurationAdminV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete leaderboard configuration admin v3 params
func (o *DeleteLeaderboardConfigurationAdminV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete leaderboard configuration admin v3 params
func (o *DeleteLeaderboardConfigurationAdminV3Params) WithContext(ctx context.Context) *DeleteLeaderboardConfigurationAdminV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete leaderboard configuration admin v3 params
func (o *DeleteLeaderboardConfigurationAdminV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete leaderboard configuration admin v3 params
func (o *DeleteLeaderboardConfigurationAdminV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete leaderboard configuration admin v3 params
func (o *DeleteLeaderboardConfigurationAdminV3Params) WithHTTPClient(client *http.Client) *DeleteLeaderboardConfigurationAdminV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete leaderboard configuration admin v3 params
func (o *DeleteLeaderboardConfigurationAdminV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete leaderboard configuration admin v3 params
func (o *DeleteLeaderboardConfigurationAdminV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithLeaderboardCode adds the leaderboardCode to the delete leaderboard configuration admin v3 params
func (o *DeleteLeaderboardConfigurationAdminV3Params) WithLeaderboardCode(leaderboardCode string) *DeleteLeaderboardConfigurationAdminV3Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the delete leaderboard configuration admin v3 params
func (o *DeleteLeaderboardConfigurationAdminV3Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the delete leaderboard configuration admin v3 params
func (o *DeleteLeaderboardConfigurationAdminV3Params) WithNamespace(namespace string) *DeleteLeaderboardConfigurationAdminV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete leaderboard configuration admin v3 params
func (o *DeleteLeaderboardConfigurationAdminV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteLeaderboardConfigurationAdminV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
