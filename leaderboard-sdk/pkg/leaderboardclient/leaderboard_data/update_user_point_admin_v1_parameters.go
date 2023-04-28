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

	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
)

// NewUpdateUserPointAdminV1Params creates a new UpdateUserPointAdminV1Params object
// with the default values initialized.
func NewUpdateUserPointAdminV1Params() *UpdateUserPointAdminV1Params {
	var ()
	return &UpdateUserPointAdminV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateUserPointAdminV1ParamsWithTimeout creates a new UpdateUserPointAdminV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateUserPointAdminV1ParamsWithTimeout(timeout time.Duration) *UpdateUserPointAdminV1Params {
	var ()
	return &UpdateUserPointAdminV1Params{

		timeout: timeout,
	}
}

// NewUpdateUserPointAdminV1ParamsWithContext creates a new UpdateUserPointAdminV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateUserPointAdminV1ParamsWithContext(ctx context.Context) *UpdateUserPointAdminV1Params {
	var ()
	return &UpdateUserPointAdminV1Params{

		Context: ctx,
	}
}

// NewUpdateUserPointAdminV1ParamsWithHTTPClient creates a new UpdateUserPointAdminV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateUserPointAdminV1ParamsWithHTTPClient(client *http.Client) *UpdateUserPointAdminV1Params {
	var ()
	return &UpdateUserPointAdminV1Params{
		HTTPClient: client,
	}
}

/*UpdateUserPointAdminV1Params contains all the parameters to send to the API endpoint
for the update user point admin v1 operation typically these are written to a http.Request
*/
type UpdateUserPointAdminV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *leaderboardclientmodels.ModelsUpdateUserPointAdminV1Request
	/*LeaderboardCode
	  the human readable unique code to identify the leaderboard. Must be lowercase and maximum length is 48

	*/
	LeaderboardCode string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  User ID, should follow UUID version 4 without hyphen

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update user point admin v1 params
func (o *UpdateUserPointAdminV1Params) WithTimeout(timeout time.Duration) *UpdateUserPointAdminV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update user point admin v1 params
func (o *UpdateUserPointAdminV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update user point admin v1 params
func (o *UpdateUserPointAdminV1Params) WithContext(ctx context.Context) *UpdateUserPointAdminV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update user point admin v1 params
func (o *UpdateUserPointAdminV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update user point admin v1 params
func (o *UpdateUserPointAdminV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update user point admin v1 params
func (o *UpdateUserPointAdminV1Params) WithHTTPClient(client *http.Client) *UpdateUserPointAdminV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update user point admin v1 params
func (o *UpdateUserPointAdminV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update user point admin v1 params
func (o *UpdateUserPointAdminV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update user point admin v1 params
func (o *UpdateUserPointAdminV1Params) WithBody(body *leaderboardclientmodels.ModelsUpdateUserPointAdminV1Request) *UpdateUserPointAdminV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update user point admin v1 params
func (o *UpdateUserPointAdminV1Params) SetBody(body *leaderboardclientmodels.ModelsUpdateUserPointAdminV1Request) {
	o.Body = body
}

// WithLeaderboardCode adds the leaderboardCode to the update user point admin v1 params
func (o *UpdateUserPointAdminV1Params) WithLeaderboardCode(leaderboardCode string) *UpdateUserPointAdminV1Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the update user point admin v1 params
func (o *UpdateUserPointAdminV1Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the update user point admin v1 params
func (o *UpdateUserPointAdminV1Params) WithNamespace(namespace string) *UpdateUserPointAdminV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update user point admin v1 params
func (o *UpdateUserPointAdminV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the update user point admin v1 params
func (o *UpdateUserPointAdminV1Params) WithUserID(userID string) *UpdateUserPointAdminV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the update user point admin v1 params
func (o *UpdateUserPointAdminV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateUserPointAdminV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
