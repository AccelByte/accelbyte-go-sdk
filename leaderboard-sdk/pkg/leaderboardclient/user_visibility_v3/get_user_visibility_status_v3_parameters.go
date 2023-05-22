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
)

// NewGetUserVisibilityStatusV3Params creates a new GetUserVisibilityStatusV3Params object
// with the default values initialized.
func NewGetUserVisibilityStatusV3Params() *GetUserVisibilityStatusV3Params {
	var ()
	return &GetUserVisibilityStatusV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserVisibilityStatusV3ParamsWithTimeout creates a new GetUserVisibilityStatusV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserVisibilityStatusV3ParamsWithTimeout(timeout time.Duration) *GetUserVisibilityStatusV3Params {
	var ()
	return &GetUserVisibilityStatusV3Params{

		timeout: timeout,
	}
}

// NewGetUserVisibilityStatusV3ParamsWithContext creates a new GetUserVisibilityStatusV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserVisibilityStatusV3ParamsWithContext(ctx context.Context) *GetUserVisibilityStatusV3Params {
	var ()
	return &GetUserVisibilityStatusV3Params{

		Context: ctx,
	}
}

// NewGetUserVisibilityStatusV3ParamsWithHTTPClient creates a new GetUserVisibilityStatusV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserVisibilityStatusV3ParamsWithHTTPClient(client *http.Client) *GetUserVisibilityStatusV3Params {
	var ()
	return &GetUserVisibilityStatusV3Params{
		HTTPClient: client,
	}
}

/*GetUserVisibilityStatusV3Params contains all the parameters to send to the API endpoint
for the get user visibility status v3 operation typically these are written to a http.Request
*/
type GetUserVisibilityStatusV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the get user visibility status v3 params
func (o *GetUserVisibilityStatusV3Params) WithTimeout(timeout time.Duration) *GetUserVisibilityStatusV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user visibility status v3 params
func (o *GetUserVisibilityStatusV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user visibility status v3 params
func (o *GetUserVisibilityStatusV3Params) WithContext(ctx context.Context) *GetUserVisibilityStatusV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user visibility status v3 params
func (o *GetUserVisibilityStatusV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user visibility status v3 params
func (o *GetUserVisibilityStatusV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user visibility status v3 params
func (o *GetUserVisibilityStatusV3Params) WithHTTPClient(client *http.Client) *GetUserVisibilityStatusV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user visibility status v3 params
func (o *GetUserVisibilityStatusV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user visibility status v3 params
func (o *GetUserVisibilityStatusV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithLeaderboardCode adds the leaderboardCode to the get user visibility status v3 params
func (o *GetUserVisibilityStatusV3Params) WithLeaderboardCode(leaderboardCode string) *GetUserVisibilityStatusV3Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the get user visibility status v3 params
func (o *GetUserVisibilityStatusV3Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the get user visibility status v3 params
func (o *GetUserVisibilityStatusV3Params) WithNamespace(namespace string) *GetUserVisibilityStatusV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user visibility status v3 params
func (o *GetUserVisibilityStatusV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user visibility status v3 params
func (o *GetUserVisibilityStatusV3Params) WithUserID(userID string) *GetUserVisibilityStatusV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user visibility status v3 params
func (o *GetUserVisibilityStatusV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserVisibilityStatusV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
