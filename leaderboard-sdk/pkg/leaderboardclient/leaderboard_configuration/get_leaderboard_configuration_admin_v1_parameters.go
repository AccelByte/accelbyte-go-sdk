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

// NewGetLeaderboardConfigurationAdminV1Params creates a new GetLeaderboardConfigurationAdminV1Params object
// with the default values initialized.
func NewGetLeaderboardConfigurationAdminV1Params() *GetLeaderboardConfigurationAdminV1Params {
	var ()
	return &GetLeaderboardConfigurationAdminV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetLeaderboardConfigurationAdminV1ParamsWithTimeout creates a new GetLeaderboardConfigurationAdminV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetLeaderboardConfigurationAdminV1ParamsWithTimeout(timeout time.Duration) *GetLeaderboardConfigurationAdminV1Params {
	var ()
	return &GetLeaderboardConfigurationAdminV1Params{

		timeout: timeout,
	}
}

// NewGetLeaderboardConfigurationAdminV1ParamsWithContext creates a new GetLeaderboardConfigurationAdminV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetLeaderboardConfigurationAdminV1ParamsWithContext(ctx context.Context) *GetLeaderboardConfigurationAdminV1Params {
	var ()
	return &GetLeaderboardConfigurationAdminV1Params{

		Context: ctx,
	}
}

// NewGetLeaderboardConfigurationAdminV1ParamsWithHTTPClient creates a new GetLeaderboardConfigurationAdminV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetLeaderboardConfigurationAdminV1ParamsWithHTTPClient(client *http.Client) *GetLeaderboardConfigurationAdminV1Params {
	var ()
	return &GetLeaderboardConfigurationAdminV1Params{
		HTTPClient: client,
	}
}

/*GetLeaderboardConfigurationAdminV1Params contains all the parameters to send to the API endpoint
for the get leaderboard configuration admin v1 operation typically these are written to a http.Request
*/
type GetLeaderboardConfigurationAdminV1Params struct {

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

// WithTimeout adds the timeout to the get leaderboard configuration admin v1 params
func (o *GetLeaderboardConfigurationAdminV1Params) WithTimeout(timeout time.Duration) *GetLeaderboardConfigurationAdminV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get leaderboard configuration admin v1 params
func (o *GetLeaderboardConfigurationAdminV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get leaderboard configuration admin v1 params
func (o *GetLeaderboardConfigurationAdminV1Params) WithContext(ctx context.Context) *GetLeaderboardConfigurationAdminV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get leaderboard configuration admin v1 params
func (o *GetLeaderboardConfigurationAdminV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get leaderboard configuration admin v1 params
func (o *GetLeaderboardConfigurationAdminV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get leaderboard configuration admin v1 params
func (o *GetLeaderboardConfigurationAdminV1Params) WithHTTPClient(client *http.Client) *GetLeaderboardConfigurationAdminV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get leaderboard configuration admin v1 params
func (o *GetLeaderboardConfigurationAdminV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get leaderboard configuration admin v1 params
func (o *GetLeaderboardConfigurationAdminV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithLeaderboardCode adds the leaderboardCode to the get leaderboard configuration admin v1 params
func (o *GetLeaderboardConfigurationAdminV1Params) WithLeaderboardCode(leaderboardCode string) *GetLeaderboardConfigurationAdminV1Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the get leaderboard configuration admin v1 params
func (o *GetLeaderboardConfigurationAdminV1Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the get leaderboard configuration admin v1 params
func (o *GetLeaderboardConfigurationAdminV1Params) WithNamespace(namespace string) *GetLeaderboardConfigurationAdminV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get leaderboard configuration admin v1 params
func (o *GetLeaderboardConfigurationAdminV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetLeaderboardConfigurationAdminV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
