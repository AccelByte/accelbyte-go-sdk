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

// NewPublicGetUserLoginHistoriesV3Params creates a new PublicGetUserLoginHistoriesV3Params object
// with the default values initialized.
func NewPublicGetUserLoginHistoriesV3Params() *PublicGetUserLoginHistoriesV3Params {
	var ()
	return &PublicGetUserLoginHistoriesV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserLoginHistoriesV3ParamsWithTimeout creates a new PublicGetUserLoginHistoriesV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserLoginHistoriesV3ParamsWithTimeout(timeout time.Duration) *PublicGetUserLoginHistoriesV3Params {
	var ()
	return &PublicGetUserLoginHistoriesV3Params{

		timeout: timeout,
	}
}

// NewPublicGetUserLoginHistoriesV3ParamsWithContext creates a new PublicGetUserLoginHistoriesV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserLoginHistoriesV3ParamsWithContext(ctx context.Context) *PublicGetUserLoginHistoriesV3Params {
	var ()
	return &PublicGetUserLoginHistoriesV3Params{

		Context: ctx,
	}
}

// NewPublicGetUserLoginHistoriesV3ParamsWithHTTPClient creates a new PublicGetUserLoginHistoriesV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserLoginHistoriesV3ParamsWithHTTPClient(client *http.Client) *PublicGetUserLoginHistoriesV3Params {
	var ()
	return &PublicGetUserLoginHistoriesV3Params{
		HTTPClient: client,
	}
}

/*PublicGetUserLoginHistoriesV3Params contains all the parameters to send to the API endpoint
for the public get user login histories v3 operation typically these are written to a http.Request
*/
type PublicGetUserLoginHistoriesV3Params struct {

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
	/*After
	  The cursor that points to query data for the next page (In Unix timestamp formats, e.g:1545114248)

	*/
	After *float64
	/*Before
	  The cursor that points to query data for the previous page (In Unix timestamp formats, e.g:1545114248).

	*/
	Before *float64
	/*Limit
	  The number of data retrieved in a page

	*/
	Limit *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get user login histories v3 params
func (o *PublicGetUserLoginHistoriesV3Params) WithTimeout(timeout time.Duration) *PublicGetUserLoginHistoriesV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user login histories v3 params
func (o *PublicGetUserLoginHistoriesV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user login histories v3 params
func (o *PublicGetUserLoginHistoriesV3Params) WithContext(ctx context.Context) *PublicGetUserLoginHistoriesV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user login histories v3 params
func (o *PublicGetUserLoginHistoriesV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user login histories v3 params
func (o *PublicGetUserLoginHistoriesV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user login histories v3 params
func (o *PublicGetUserLoginHistoriesV3Params) WithHTTPClient(client *http.Client) *PublicGetUserLoginHistoriesV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user login histories v3 params
func (o *PublicGetUserLoginHistoriesV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user login histories v3 params
func (o *PublicGetUserLoginHistoriesV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get user login histories v3 params
func (o *PublicGetUserLoginHistoriesV3Params) WithNamespace(namespace string) *PublicGetUserLoginHistoriesV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user login histories v3 params
func (o *PublicGetUserLoginHistoriesV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public get user login histories v3 params
func (o *PublicGetUserLoginHistoriesV3Params) WithUserID(userID string) *PublicGetUserLoginHistoriesV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get user login histories v3 params
func (o *PublicGetUserLoginHistoriesV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WithAfter adds the after to the public get user login histories v3 params
func (o *PublicGetUserLoginHistoriesV3Params) WithAfter(after *float64) *PublicGetUserLoginHistoriesV3Params {
	o.SetAfter(after)
	return o
}

// SetAfter adds the after to the public get user login histories v3 params
func (o *PublicGetUserLoginHistoriesV3Params) SetAfter(after *float64) {
	o.After = after
}

// WithBefore adds the before to the public get user login histories v3 params
func (o *PublicGetUserLoginHistoriesV3Params) WithBefore(before *float64) *PublicGetUserLoginHistoriesV3Params {
	o.SetBefore(before)
	return o
}

// SetBefore adds the before to the public get user login histories v3 params
func (o *PublicGetUserLoginHistoriesV3Params) SetBefore(before *float64) {
	o.Before = before
}

// WithLimit adds the limit to the public get user login histories v3 params
func (o *PublicGetUserLoginHistoriesV3Params) WithLimit(limit *int64) *PublicGetUserLoginHistoriesV3Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public get user login histories v3 params
func (o *PublicGetUserLoginHistoriesV3Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserLoginHistoriesV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.After != nil {

		// query param after
		var qrAfter float64
		if o.After != nil {
			qrAfter = *o.After
		}
		qAfter := swag.FormatFloat64(qrAfter)
		if qAfter != "" {
			if err := r.SetQueryParam("after", qAfter); err != nil {
				return err
			}
		}

	}

	if o.Before != nil {

		// query param before
		var qrBefore float64
		if o.Before != nil {
			qrBefore = *o.Before
		}
		qBefore := swag.FormatFloat64(qrBefore)
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
