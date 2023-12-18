// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package recent_player

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

// NewPublicGetRecentPlayerParams creates a new PublicGetRecentPlayerParams object
// with the default values initialized.
func NewPublicGetRecentPlayerParams() *PublicGetRecentPlayerParams {
	var (
		limitDefault = int64(20)
	)
	return &PublicGetRecentPlayerParams{
		Limit: &limitDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetRecentPlayerParamsWithTimeout creates a new PublicGetRecentPlayerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetRecentPlayerParamsWithTimeout(timeout time.Duration) *PublicGetRecentPlayerParams {
	var (
		limitDefault = int64(20)
	)
	return &PublicGetRecentPlayerParams{
		Limit: &limitDefault,

		timeout: timeout,
	}
}

// NewPublicGetRecentPlayerParamsWithContext creates a new PublicGetRecentPlayerParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetRecentPlayerParamsWithContext(ctx context.Context) *PublicGetRecentPlayerParams {
	var (
		limitDefault = int64(20)
	)
	return &PublicGetRecentPlayerParams{
		Limit: &limitDefault,

		Context: ctx,
	}
}

// NewPublicGetRecentPlayerParamsWithHTTPClient creates a new PublicGetRecentPlayerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetRecentPlayerParamsWithHTTPClient(client *http.Client) *PublicGetRecentPlayerParams {
	var (
		limitDefault = int64(20)
	)
	return &PublicGetRecentPlayerParams{
		Limit:      &limitDefault,
		HTTPClient: client,
	}
}

/*PublicGetRecentPlayerParams contains all the parameters to send to the API endpoint
for the public get recent player operation typically these are written to a http.Request
*/
type PublicGetRecentPlayerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string
	/*Limit
	  Recent Player Limit

	*/
	Limit *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get recent player params
func (o *PublicGetRecentPlayerParams) WithTimeout(timeout time.Duration) *PublicGetRecentPlayerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get recent player params
func (o *PublicGetRecentPlayerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get recent player params
func (o *PublicGetRecentPlayerParams) WithContext(ctx context.Context) *PublicGetRecentPlayerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get recent player params
func (o *PublicGetRecentPlayerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get recent player params
func (o *PublicGetRecentPlayerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get recent player params
func (o *PublicGetRecentPlayerParams) WithHTTPClient(client *http.Client) *PublicGetRecentPlayerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get recent player params
func (o *PublicGetRecentPlayerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get recent player params
func (o *PublicGetRecentPlayerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get recent player params
func (o *PublicGetRecentPlayerParams) WithNamespace(namespace string) *PublicGetRecentPlayerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get recent player params
func (o *PublicGetRecentPlayerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public get recent player params
func (o *PublicGetRecentPlayerParams) WithUserID(userID string) *PublicGetRecentPlayerParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get recent player params
func (o *PublicGetRecentPlayerParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the public get recent player params
func (o *PublicGetRecentPlayerParams) WithLimit(limit *int64) *PublicGetRecentPlayerParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public get recent player params
func (o *PublicGetRecentPlayerParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetRecentPlayerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
