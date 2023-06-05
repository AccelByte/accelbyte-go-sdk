// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_data_v3

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewGetUserLeaderboardRankingsAdminV3Params creates a new GetUserLeaderboardRankingsAdminV3Params object
// with the default values initialized.
func NewGetUserLeaderboardRankingsAdminV3Params() *GetUserLeaderboardRankingsAdminV3Params {
	var ()
	return &GetUserLeaderboardRankingsAdminV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserLeaderboardRankingsAdminV3ParamsWithTimeout creates a new GetUserLeaderboardRankingsAdminV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserLeaderboardRankingsAdminV3ParamsWithTimeout(timeout time.Duration) *GetUserLeaderboardRankingsAdminV3Params {
	var ()
	return &GetUserLeaderboardRankingsAdminV3Params{

		timeout: timeout,
	}
}

// NewGetUserLeaderboardRankingsAdminV3ParamsWithContext creates a new GetUserLeaderboardRankingsAdminV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserLeaderboardRankingsAdminV3ParamsWithContext(ctx context.Context) *GetUserLeaderboardRankingsAdminV3Params {
	var ()
	return &GetUserLeaderboardRankingsAdminV3Params{

		Context: ctx,
	}
}

// NewGetUserLeaderboardRankingsAdminV3ParamsWithHTTPClient creates a new GetUserLeaderboardRankingsAdminV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserLeaderboardRankingsAdminV3ParamsWithHTTPClient(client *http.Client) *GetUserLeaderboardRankingsAdminV3Params {
	var ()
	return &GetUserLeaderboardRankingsAdminV3Params{
		HTTPClient: client,
	}
}

/*GetUserLeaderboardRankingsAdminV3Params contains all the parameters to send to the API endpoint
for the get user leaderboard rankings admin v3 operation typically these are written to a http.Request
*/
type GetUserLeaderboardRankingsAdminV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string
	/*Limit
	  size of displayed data

	*/
	Limit *int64
	/*Offset
	  The start position that points to query data

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get user leaderboard rankings admin v3 params
func (o *GetUserLeaderboardRankingsAdminV3Params) WithTimeout(timeout time.Duration) *GetUserLeaderboardRankingsAdminV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user leaderboard rankings admin v3 params
func (o *GetUserLeaderboardRankingsAdminV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user leaderboard rankings admin v3 params
func (o *GetUserLeaderboardRankingsAdminV3Params) WithContext(ctx context.Context) *GetUserLeaderboardRankingsAdminV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user leaderboard rankings admin v3 params
func (o *GetUserLeaderboardRankingsAdminV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user leaderboard rankings admin v3 params
func (o *GetUserLeaderboardRankingsAdminV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user leaderboard rankings admin v3 params
func (o *GetUserLeaderboardRankingsAdminV3Params) WithHTTPClient(client *http.Client) *GetUserLeaderboardRankingsAdminV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user leaderboard rankings admin v3 params
func (o *GetUserLeaderboardRankingsAdminV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user leaderboard rankings admin v3 params
func (o *GetUserLeaderboardRankingsAdminV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get user leaderboard rankings admin v3 params
func (o *GetUserLeaderboardRankingsAdminV3Params) WithNamespace(namespace string) *GetUserLeaderboardRankingsAdminV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user leaderboard rankings admin v3 params
func (o *GetUserLeaderboardRankingsAdminV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user leaderboard rankings admin v3 params
func (o *GetUserLeaderboardRankingsAdminV3Params) WithUserID(userID string) *GetUserLeaderboardRankingsAdminV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user leaderboard rankings admin v3 params
func (o *GetUserLeaderboardRankingsAdminV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the get user leaderboard rankings admin v3 params
func (o *GetUserLeaderboardRankingsAdminV3Params) WithLimit(limit *int64) *GetUserLeaderboardRankingsAdminV3Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get user leaderboard rankings admin v3 params
func (o *GetUserLeaderboardRankingsAdminV3Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get user leaderboard rankings admin v3 params
func (o *GetUserLeaderboardRankingsAdminV3Params) WithOffset(offset *int64) *GetUserLeaderboardRankingsAdminV3Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get user leaderboard rankings admin v3 params
func (o *GetUserLeaderboardRankingsAdminV3Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserLeaderboardRankingsAdminV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

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
