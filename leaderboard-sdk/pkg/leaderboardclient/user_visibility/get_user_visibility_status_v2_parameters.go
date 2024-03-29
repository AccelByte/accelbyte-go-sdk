// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_visibility

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

// NewGetUserVisibilityStatusV2Params creates a new GetUserVisibilityStatusV2Params object
// with the default values initialized.
func NewGetUserVisibilityStatusV2Params() *GetUserVisibilityStatusV2Params {
	var ()
	return &GetUserVisibilityStatusV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserVisibilityStatusV2ParamsWithTimeout creates a new GetUserVisibilityStatusV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserVisibilityStatusV2ParamsWithTimeout(timeout time.Duration) *GetUserVisibilityStatusV2Params {
	var ()
	return &GetUserVisibilityStatusV2Params{

		timeout: timeout,
	}
}

// NewGetUserVisibilityStatusV2ParamsWithContext creates a new GetUserVisibilityStatusV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserVisibilityStatusV2ParamsWithContext(ctx context.Context) *GetUserVisibilityStatusV2Params {
	var ()
	return &GetUserVisibilityStatusV2Params{

		Context: ctx,
	}
}

// NewGetUserVisibilityStatusV2ParamsWithHTTPClient creates a new GetUserVisibilityStatusV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserVisibilityStatusV2ParamsWithHTTPClient(client *http.Client) *GetUserVisibilityStatusV2Params {
	var ()
	return &GetUserVisibilityStatusV2Params{
		HTTPClient: client,
	}
}

/*GetUserVisibilityStatusV2Params contains all the parameters to send to the API endpoint
for the get user visibility status v2 operation typically these are written to a http.Request
*/
type GetUserVisibilityStatusV2Params struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get user visibility status v2 params
func (o *GetUserVisibilityStatusV2Params) WithTimeout(timeout time.Duration) *GetUserVisibilityStatusV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user visibility status v2 params
func (o *GetUserVisibilityStatusV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user visibility status v2 params
func (o *GetUserVisibilityStatusV2Params) WithContext(ctx context.Context) *GetUserVisibilityStatusV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user visibility status v2 params
func (o *GetUserVisibilityStatusV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user visibility status v2 params
func (o *GetUserVisibilityStatusV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user visibility status v2 params
func (o *GetUserVisibilityStatusV2Params) WithHTTPClient(client *http.Client) *GetUserVisibilityStatusV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user visibility status v2 params
func (o *GetUserVisibilityStatusV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user visibility status v2 params
func (o *GetUserVisibilityStatusV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserVisibilityStatusV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithLeaderboardCode adds the leaderboardCode to the get user visibility status v2 params
func (o *GetUserVisibilityStatusV2Params) WithLeaderboardCode(leaderboardCode string) *GetUserVisibilityStatusV2Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the get user visibility status v2 params
func (o *GetUserVisibilityStatusV2Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the get user visibility status v2 params
func (o *GetUserVisibilityStatusV2Params) WithNamespace(namespace string) *GetUserVisibilityStatusV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user visibility status v2 params
func (o *GetUserVisibilityStatusV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user visibility status v2 params
func (o *GetUserVisibilityStatusV2Params) WithUserID(userID string) *GetUserVisibilityStatusV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user visibility status v2 params
func (o *GetUserVisibilityStatusV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserVisibilityStatusV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
