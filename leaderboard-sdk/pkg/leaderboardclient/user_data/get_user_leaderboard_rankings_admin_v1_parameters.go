// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package user_data

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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

// NewGetUserLeaderboardRankingsAdminV1Params creates a new GetUserLeaderboardRankingsAdminV1Params object
// with the default values initialized.
func NewGetUserLeaderboardRankingsAdminV1Params() *GetUserLeaderboardRankingsAdminV1Params {
	var ()
	return &GetUserLeaderboardRankingsAdminV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserLeaderboardRankingsAdminV1ParamsWithTimeout creates a new GetUserLeaderboardRankingsAdminV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserLeaderboardRankingsAdminV1ParamsWithTimeout(timeout time.Duration) *GetUserLeaderboardRankingsAdminV1Params {
	var ()
	return &GetUserLeaderboardRankingsAdminV1Params{

		timeout: timeout,
	}
}

// NewGetUserLeaderboardRankingsAdminV1ParamsWithContext creates a new GetUserLeaderboardRankingsAdminV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserLeaderboardRankingsAdminV1ParamsWithContext(ctx context.Context) *GetUserLeaderboardRankingsAdminV1Params {
	var ()
	return &GetUserLeaderboardRankingsAdminV1Params{

		Context: ctx,
	}
}

// NewGetUserLeaderboardRankingsAdminV1ParamsWithHTTPClient creates a new GetUserLeaderboardRankingsAdminV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserLeaderboardRankingsAdminV1ParamsWithHTTPClient(client *http.Client) *GetUserLeaderboardRankingsAdminV1Params {
	var ()
	return &GetUserLeaderboardRankingsAdminV1Params{
		HTTPClient: client,
	}
}

/*GetUserLeaderboardRankingsAdminV1Params contains all the parameters to send to the API endpoint
for the get user leaderboard rankings admin v1 operation typically these are written to a http.Request
*/
type GetUserLeaderboardRankingsAdminV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Limit
	  size of displayed data

	*/
	Limit *int64
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Offset
	  The start position that points to query data

	*/
	Offset *int64
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get user leaderboard rankings admin v1 params
func (o *GetUserLeaderboardRankingsAdminV1Params) WithTimeout(timeout time.Duration) *GetUserLeaderboardRankingsAdminV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user leaderboard rankings admin v1 params
func (o *GetUserLeaderboardRankingsAdminV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user leaderboard rankings admin v1 params
func (o *GetUserLeaderboardRankingsAdminV1Params) WithContext(ctx context.Context) *GetUserLeaderboardRankingsAdminV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user leaderboard rankings admin v1 params
func (o *GetUserLeaderboardRankingsAdminV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user leaderboard rankings admin v1 params
func (o *GetUserLeaderboardRankingsAdminV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user leaderboard rankings admin v1 params
func (o *GetUserLeaderboardRankingsAdminV1Params) WithHTTPClient(client *http.Client) *GetUserLeaderboardRankingsAdminV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user leaderboard rankings admin v1 params
func (o *GetUserLeaderboardRankingsAdminV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user leaderboard rankings admin v1 params
func (o *GetUserLeaderboardRankingsAdminV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithLimit adds the limit to the get user leaderboard rankings admin v1 params
func (o *GetUserLeaderboardRankingsAdminV1Params) WithLimit(limit *int64) *GetUserLeaderboardRankingsAdminV1Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get user leaderboard rankings admin v1 params
func (o *GetUserLeaderboardRankingsAdminV1Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithNamespace adds the namespace to the get user leaderboard rankings admin v1 params
func (o *GetUserLeaderboardRankingsAdminV1Params) WithNamespace(namespace string) *GetUserLeaderboardRankingsAdminV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user leaderboard rankings admin v1 params
func (o *GetUserLeaderboardRankingsAdminV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithOffset adds the offset to the get user leaderboard rankings admin v1 params
func (o *GetUserLeaderboardRankingsAdminV1Params) WithOffset(offset *int64) *GetUserLeaderboardRankingsAdminV1Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get user leaderboard rankings admin v1 params
func (o *GetUserLeaderboardRankingsAdminV1Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithUserID adds the userID to the get user leaderboard rankings admin v1 params
func (o *GetUserLeaderboardRankingsAdminV1Params) WithUserID(userID string) *GetUserLeaderboardRankingsAdminV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user leaderboard rankings admin v1 params
func (o *GetUserLeaderboardRankingsAdminV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserLeaderboardRankingsAdminV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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
