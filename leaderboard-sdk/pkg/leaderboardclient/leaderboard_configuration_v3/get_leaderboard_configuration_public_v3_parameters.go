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

// NewGetLeaderboardConfigurationPublicV3Params creates a new GetLeaderboardConfigurationPublicV3Params object
// with the default values initialized.
func NewGetLeaderboardConfigurationPublicV3Params() *GetLeaderboardConfigurationPublicV3Params {
	var ()
	return &GetLeaderboardConfigurationPublicV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetLeaderboardConfigurationPublicV3ParamsWithTimeout creates a new GetLeaderboardConfigurationPublicV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetLeaderboardConfigurationPublicV3ParamsWithTimeout(timeout time.Duration) *GetLeaderboardConfigurationPublicV3Params {
	var ()
	return &GetLeaderboardConfigurationPublicV3Params{

		timeout: timeout,
	}
}

// NewGetLeaderboardConfigurationPublicV3ParamsWithContext creates a new GetLeaderboardConfigurationPublicV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetLeaderboardConfigurationPublicV3ParamsWithContext(ctx context.Context) *GetLeaderboardConfigurationPublicV3Params {
	var ()
	return &GetLeaderboardConfigurationPublicV3Params{

		Context: ctx,
	}
}

// NewGetLeaderboardConfigurationPublicV3ParamsWithHTTPClient creates a new GetLeaderboardConfigurationPublicV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetLeaderboardConfigurationPublicV3ParamsWithHTTPClient(client *http.Client) *GetLeaderboardConfigurationPublicV3Params {
	var ()
	return &GetLeaderboardConfigurationPublicV3Params{
		HTTPClient: client,
	}
}

/*GetLeaderboardConfigurationPublicV3Params contains all the parameters to send to the API endpoint
for the get leaderboard configuration public v3 operation typically these are written to a http.Request
*/
type GetLeaderboardConfigurationPublicV3Params struct {

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

// WithTimeout adds the timeout to the get leaderboard configuration public v3 params
func (o *GetLeaderboardConfigurationPublicV3Params) WithTimeout(timeout time.Duration) *GetLeaderboardConfigurationPublicV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get leaderboard configuration public v3 params
func (o *GetLeaderboardConfigurationPublicV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get leaderboard configuration public v3 params
func (o *GetLeaderboardConfigurationPublicV3Params) WithContext(ctx context.Context) *GetLeaderboardConfigurationPublicV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get leaderboard configuration public v3 params
func (o *GetLeaderboardConfigurationPublicV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get leaderboard configuration public v3 params
func (o *GetLeaderboardConfigurationPublicV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get leaderboard configuration public v3 params
func (o *GetLeaderboardConfigurationPublicV3Params) WithHTTPClient(client *http.Client) *GetLeaderboardConfigurationPublicV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get leaderboard configuration public v3 params
func (o *GetLeaderboardConfigurationPublicV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get leaderboard configuration public v3 params
func (o *GetLeaderboardConfigurationPublicV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithLeaderboardCode adds the leaderboardCode to the get leaderboard configuration public v3 params
func (o *GetLeaderboardConfigurationPublicV3Params) WithLeaderboardCode(leaderboardCode string) *GetLeaderboardConfigurationPublicV3Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the get leaderboard configuration public v3 params
func (o *GetLeaderboardConfigurationPublicV3Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the get leaderboard configuration public v3 params
func (o *GetLeaderboardConfigurationPublicV3Params) WithNamespace(namespace string) *GetLeaderboardConfigurationPublicV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get leaderboard configuration public v3 params
func (o *GetLeaderboardConfigurationPublicV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetLeaderboardConfigurationPublicV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
