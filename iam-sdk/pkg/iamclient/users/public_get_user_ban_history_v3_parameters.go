// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// NewPublicGetUserBanHistoryV3Params creates a new PublicGetUserBanHistoryV3Params object
// with the default values initialized.
func NewPublicGetUserBanHistoryV3Params() *PublicGetUserBanHistoryV3Params {
	var ()
	return &PublicGetUserBanHistoryV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserBanHistoryV3ParamsWithTimeout creates a new PublicGetUserBanHistoryV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserBanHistoryV3ParamsWithTimeout(timeout time.Duration) *PublicGetUserBanHistoryV3Params {
	var ()
	return &PublicGetUserBanHistoryV3Params{

		timeout: timeout,
	}
}

// NewPublicGetUserBanHistoryV3ParamsWithContext creates a new PublicGetUserBanHistoryV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserBanHistoryV3ParamsWithContext(ctx context.Context) *PublicGetUserBanHistoryV3Params {
	var ()
	return &PublicGetUserBanHistoryV3Params{

		Context: ctx,
	}
}

// NewPublicGetUserBanHistoryV3ParamsWithHTTPClient creates a new PublicGetUserBanHistoryV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserBanHistoryV3ParamsWithHTTPClient(client *http.Client) *PublicGetUserBanHistoryV3Params {
	var ()
	return &PublicGetUserBanHistoryV3Params{
		HTTPClient: client,
	}
}

/*PublicGetUserBanHistoryV3Params contains all the parameters to send to the API endpoint
for the public get user ban history v3 operation typically these are written to a http.Request
*/
type PublicGetUserBanHistoryV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string
	/*ActiveOnly
	  Filter ban based on the ban status. If you set this, only active ban returned

	*/
	ActiveOnly *bool
	/*After
	  Filter ban based on the date creation. If you set this, only user bans created after the date returned. The date is in ISO-8601. Example value: 2019-05-18T07:17:45Z. <em>Doesn't work yet</em>

	*/
	After *string
	/*Before
	  Filter ban based on the date creation. If you set this, only user bans created before the date returned. The date is in ISO-8601. Example value: 2019-05-18T07:17:45Z. <em>Doesn't work yet</em>

	*/
	Before *string
	/*Limit
	  The number of data returned in one query. The maximum value of the limit is 100 and the minimum value of the limit is 1. If you set this into -1, then it returns all data. Default: -1. <em>Doesn't work yet</em>.

	*/
	Limit *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get user ban history v3 params
func (o *PublicGetUserBanHistoryV3Params) WithTimeout(timeout time.Duration) *PublicGetUserBanHistoryV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user ban history v3 params
func (o *PublicGetUserBanHistoryV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user ban history v3 params
func (o *PublicGetUserBanHistoryV3Params) WithContext(ctx context.Context) *PublicGetUserBanHistoryV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user ban history v3 params
func (o *PublicGetUserBanHistoryV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user ban history v3 params
func (o *PublicGetUserBanHistoryV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user ban history v3 params
func (o *PublicGetUserBanHistoryV3Params) WithHTTPClient(client *http.Client) *PublicGetUserBanHistoryV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user ban history v3 params
func (o *PublicGetUserBanHistoryV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user ban history v3 params
func (o *PublicGetUserBanHistoryV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get user ban history v3 params
func (o *PublicGetUserBanHistoryV3Params) WithNamespace(namespace string) *PublicGetUserBanHistoryV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user ban history v3 params
func (o *PublicGetUserBanHistoryV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public get user ban history v3 params
func (o *PublicGetUserBanHistoryV3Params) WithUserID(userID string) *PublicGetUserBanHistoryV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get user ban history v3 params
func (o *PublicGetUserBanHistoryV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WithActiveOnly adds the activeOnly to the public get user ban history v3 params
func (o *PublicGetUserBanHistoryV3Params) WithActiveOnly(activeOnly *bool) *PublicGetUserBanHistoryV3Params {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the public get user ban history v3 params
func (o *PublicGetUserBanHistoryV3Params) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithAfter adds the after to the public get user ban history v3 params
func (o *PublicGetUserBanHistoryV3Params) WithAfter(after *string) *PublicGetUserBanHistoryV3Params {
	o.SetAfter(after)
	return o
}

// SetAfter adds the after to the public get user ban history v3 params
func (o *PublicGetUserBanHistoryV3Params) SetAfter(after *string) {
	o.After = after
}

// WithBefore adds the before to the public get user ban history v3 params
func (o *PublicGetUserBanHistoryV3Params) WithBefore(before *string) *PublicGetUserBanHistoryV3Params {
	o.SetBefore(before)
	return o
}

// SetBefore adds the before to the public get user ban history v3 params
func (o *PublicGetUserBanHistoryV3Params) SetBefore(before *string) {
	o.Before = before
}

// WithLimit adds the limit to the public get user ban history v3 params
func (o *PublicGetUserBanHistoryV3Params) WithLimit(limit *int64) *PublicGetUserBanHistoryV3Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public get user ban history v3 params
func (o *PublicGetUserBanHistoryV3Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserBanHistoryV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.ActiveOnly != nil {

		// query param activeOnly
		var qrActiveOnly bool
		if o.ActiveOnly != nil {
			qrActiveOnly = *o.ActiveOnly
		}
		qActiveOnly := swag.FormatBool(qrActiveOnly)
		if qActiveOnly != "" {
			if err := r.SetQueryParam("activeOnly", qActiveOnly); err != nil {
				return err
			}
		}

	}

	if o.After != nil {

		// query param after
		var qrAfter string
		if o.After != nil {
			qrAfter = *o.After
		}
		qAfter := qrAfter
		if qAfter != "" {
			if err := r.SetQueryParam("after", qAfter); err != nil {
				return err
			}
		}

	}

	if o.Before != nil {

		// query param before
		var qrBefore string
		if o.Before != nil {
			qrBefore = *o.Before
		}
		qBefore := qrBefore
		if qBefore != "" {
			if err := r.SetQueryParam("before", qBefore); err != nil {
				return err
			}
		}

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
