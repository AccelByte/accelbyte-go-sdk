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

// NewPublicGetUserPlatformAccountsV3Params creates a new PublicGetUserPlatformAccountsV3Params object
// with the default values initialized.
func NewPublicGetUserPlatformAccountsV3Params() *PublicGetUserPlatformAccountsV3Params {
	var ()
	return &PublicGetUserPlatformAccountsV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserPlatformAccountsV3ParamsWithTimeout creates a new PublicGetUserPlatformAccountsV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserPlatformAccountsV3ParamsWithTimeout(timeout time.Duration) *PublicGetUserPlatformAccountsV3Params {
	var ()
	return &PublicGetUserPlatformAccountsV3Params{

		timeout: timeout,
	}
}

// NewPublicGetUserPlatformAccountsV3ParamsWithContext creates a new PublicGetUserPlatformAccountsV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserPlatformAccountsV3ParamsWithContext(ctx context.Context) *PublicGetUserPlatformAccountsV3Params {
	var ()
	return &PublicGetUserPlatformAccountsV3Params{

		Context: ctx,
	}
}

// NewPublicGetUserPlatformAccountsV3ParamsWithHTTPClient creates a new PublicGetUserPlatformAccountsV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserPlatformAccountsV3ParamsWithHTTPClient(client *http.Client) *PublicGetUserPlatformAccountsV3Params {
	var ()
	return &PublicGetUserPlatformAccountsV3Params{
		HTTPClient: client,
	}
}

/*PublicGetUserPlatformAccountsV3Params contains all the parameters to send to the API endpoint
for the public get user platform accounts v3 operation typically these are written to a http.Request
*/
type PublicGetUserPlatformAccountsV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  User ID, should follow UUID version 4 without hyphen

	*/
	UserID string
	/*After
	  The cursor that points to query data for the next page

	*/
	After *string
	/*Before
	  The cursor that points to query data for the previous page

	*/
	Before *string
	/*Limit
	  the maximum number of data that may be returned (1...100)

	*/
	Limit *int64
	/*PlatformID
	  Platform ID, query specific platform account

	*/
	PlatformID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get user platform accounts v3 params
func (o *PublicGetUserPlatformAccountsV3Params) WithTimeout(timeout time.Duration) *PublicGetUserPlatformAccountsV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user platform accounts v3 params
func (o *PublicGetUserPlatformAccountsV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user platform accounts v3 params
func (o *PublicGetUserPlatformAccountsV3Params) WithContext(ctx context.Context) *PublicGetUserPlatformAccountsV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user platform accounts v3 params
func (o *PublicGetUserPlatformAccountsV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user platform accounts v3 params
func (o *PublicGetUserPlatformAccountsV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user platform accounts v3 params
func (o *PublicGetUserPlatformAccountsV3Params) WithHTTPClient(client *http.Client) *PublicGetUserPlatformAccountsV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user platform accounts v3 params
func (o *PublicGetUserPlatformAccountsV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user platform accounts v3 params
func (o *PublicGetUserPlatformAccountsV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetUserPlatformAccountsV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get user platform accounts v3 params
func (o *PublicGetUserPlatformAccountsV3Params) WithNamespace(namespace string) *PublicGetUserPlatformAccountsV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user platform accounts v3 params
func (o *PublicGetUserPlatformAccountsV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public get user platform accounts v3 params
func (o *PublicGetUserPlatformAccountsV3Params) WithUserID(userID string) *PublicGetUserPlatformAccountsV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get user platform accounts v3 params
func (o *PublicGetUserPlatformAccountsV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WithAfter adds the after to the public get user platform accounts v3 params
func (o *PublicGetUserPlatformAccountsV3Params) WithAfter(after *string) *PublicGetUserPlatformAccountsV3Params {
	o.SetAfter(after)
	return o
}

// SetAfter adds the after to the public get user platform accounts v3 params
func (o *PublicGetUserPlatformAccountsV3Params) SetAfter(after *string) {
	o.After = after
}

// WithBefore adds the before to the public get user platform accounts v3 params
func (o *PublicGetUserPlatformAccountsV3Params) WithBefore(before *string) *PublicGetUserPlatformAccountsV3Params {
	o.SetBefore(before)
	return o
}

// SetBefore adds the before to the public get user platform accounts v3 params
func (o *PublicGetUserPlatformAccountsV3Params) SetBefore(before *string) {
	o.Before = before
}

// WithLimit adds the limit to the public get user platform accounts v3 params
func (o *PublicGetUserPlatformAccountsV3Params) WithLimit(limit *int64) *PublicGetUserPlatformAccountsV3Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public get user platform accounts v3 params
func (o *PublicGetUserPlatformAccountsV3Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithPlatformID adds the platformID to the public get user platform accounts v3 params
func (o *PublicGetUserPlatformAccountsV3Params) WithPlatformID(platformID *string) *PublicGetUserPlatformAccountsV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the public get user platform accounts v3 params
func (o *PublicGetUserPlatformAccountsV3Params) SetPlatformID(platformID *string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserPlatformAccountsV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.PlatformID != nil {

		// query param platformId
		var qrPlatformID string
		if o.PlatformID != nil {
			qrPlatformID = *o.PlatformID
		}
		qPlatformID := qrPlatformID
		if qPlatformID != "" {
			if err := r.SetQueryParam("platformId", qPlatformID); err != nil {
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
