// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_visibility_v3

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
)

// NewSetUserLeaderboardVisibilityV3Params creates a new SetUserLeaderboardVisibilityV3Params object
// with the default values initialized.
func NewSetUserLeaderboardVisibilityV3Params() *SetUserLeaderboardVisibilityV3Params {
	var ()
	return &SetUserLeaderboardVisibilityV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewSetUserLeaderboardVisibilityV3ParamsWithTimeout creates a new SetUserLeaderboardVisibilityV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewSetUserLeaderboardVisibilityV3ParamsWithTimeout(timeout time.Duration) *SetUserLeaderboardVisibilityV3Params {
	var ()
	return &SetUserLeaderboardVisibilityV3Params{

		timeout: timeout,
	}
}

// NewSetUserLeaderboardVisibilityV3ParamsWithContext creates a new SetUserLeaderboardVisibilityV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewSetUserLeaderboardVisibilityV3ParamsWithContext(ctx context.Context) *SetUserLeaderboardVisibilityV3Params {
	var ()
	return &SetUserLeaderboardVisibilityV3Params{

		Context: ctx,
	}
}

// NewSetUserLeaderboardVisibilityV3ParamsWithHTTPClient creates a new SetUserLeaderboardVisibilityV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSetUserLeaderboardVisibilityV3ParamsWithHTTPClient(client *http.Client) *SetUserLeaderboardVisibilityV3Params {
	var ()
	return &SetUserLeaderboardVisibilityV3Params{
		HTTPClient: client,
	}
}

/*SetUserLeaderboardVisibilityV3Params contains all the parameters to send to the API endpoint
for the set user leaderboard visibility v3 operation typically these are written to a http.Request
*/
type SetUserLeaderboardVisibilityV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *leaderboardclientmodels.ModelsSetUserVisibilityRequest
	/*LeaderboardCode
	  Leaderboard Code

	*/
	LeaderboardCode string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the set user leaderboard visibility v3 params
func (o *SetUserLeaderboardVisibilityV3Params) WithTimeout(timeout time.Duration) *SetUserLeaderboardVisibilityV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the set user leaderboard visibility v3 params
func (o *SetUserLeaderboardVisibilityV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the set user leaderboard visibility v3 params
func (o *SetUserLeaderboardVisibilityV3Params) WithContext(ctx context.Context) *SetUserLeaderboardVisibilityV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the set user leaderboard visibility v3 params
func (o *SetUserLeaderboardVisibilityV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the set user leaderboard visibility v3 params
func (o *SetUserLeaderboardVisibilityV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the set user leaderboard visibility v3 params
func (o *SetUserLeaderboardVisibilityV3Params) WithHTTPClient(client *http.Client) *SetUserLeaderboardVisibilityV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the set user leaderboard visibility v3 params
func (o *SetUserLeaderboardVisibilityV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the set user leaderboard visibility v3 params
func (o *SetUserLeaderboardVisibilityV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the set user leaderboard visibility v3 params
func (o *SetUserLeaderboardVisibilityV3Params) WithBody(body *leaderboardclientmodels.ModelsSetUserVisibilityRequest) *SetUserLeaderboardVisibilityV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the set user leaderboard visibility v3 params
func (o *SetUserLeaderboardVisibilityV3Params) SetBody(body *leaderboardclientmodels.ModelsSetUserVisibilityRequest) {
	o.Body = body
}

// WithLeaderboardCode adds the leaderboardCode to the set user leaderboard visibility v3 params
func (o *SetUserLeaderboardVisibilityV3Params) WithLeaderboardCode(leaderboardCode string) *SetUserLeaderboardVisibilityV3Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the set user leaderboard visibility v3 params
func (o *SetUserLeaderboardVisibilityV3Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the set user leaderboard visibility v3 params
func (o *SetUserLeaderboardVisibilityV3Params) WithNamespace(namespace string) *SetUserLeaderboardVisibilityV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the set user leaderboard visibility v3 params
func (o *SetUserLeaderboardVisibilityV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the set user leaderboard visibility v3 params
func (o *SetUserLeaderboardVisibilityV3Params) WithUserID(userID string) *SetUserLeaderboardVisibilityV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the set user leaderboard visibility v3 params
func (o *SetUserLeaderboardVisibilityV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *SetUserLeaderboardVisibilityV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
