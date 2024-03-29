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

// NewAdminGetUserLoginHistoriesV3Params creates a new AdminGetUserLoginHistoriesV3Params object
// with the default values initialized.
func NewAdminGetUserLoginHistoriesV3Params() *AdminGetUserLoginHistoriesV3Params {
	var ()
	return &AdminGetUserLoginHistoriesV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetUserLoginHistoriesV3ParamsWithTimeout creates a new AdminGetUserLoginHistoriesV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetUserLoginHistoriesV3ParamsWithTimeout(timeout time.Duration) *AdminGetUserLoginHistoriesV3Params {
	var ()
	return &AdminGetUserLoginHistoriesV3Params{

		timeout: timeout,
	}
}

// NewAdminGetUserLoginHistoriesV3ParamsWithContext creates a new AdminGetUserLoginHistoriesV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetUserLoginHistoriesV3ParamsWithContext(ctx context.Context) *AdminGetUserLoginHistoriesV3Params {
	var ()
	return &AdminGetUserLoginHistoriesV3Params{

		Context: ctx,
	}
}

// NewAdminGetUserLoginHistoriesV3ParamsWithHTTPClient creates a new AdminGetUserLoginHistoriesV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetUserLoginHistoriesV3ParamsWithHTTPClient(client *http.Client) *AdminGetUserLoginHistoriesV3Params {
	var ()
	return &AdminGetUserLoginHistoriesV3Params{
		HTTPClient: client,
	}
}

/*AdminGetUserLoginHistoriesV3Params contains all the parameters to send to the API endpoint
for the admin get user login histories v3 operation typically these are written to a http.Request
*/
type AdminGetUserLoginHistoriesV3Params struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get user login histories v3 params
func (o *AdminGetUserLoginHistoriesV3Params) WithTimeout(timeout time.Duration) *AdminGetUserLoginHistoriesV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get user login histories v3 params
func (o *AdminGetUserLoginHistoriesV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get user login histories v3 params
func (o *AdminGetUserLoginHistoriesV3Params) WithContext(ctx context.Context) *AdminGetUserLoginHistoriesV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get user login histories v3 params
func (o *AdminGetUserLoginHistoriesV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get user login histories v3 params
func (o *AdminGetUserLoginHistoriesV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get user login histories v3 params
func (o *AdminGetUserLoginHistoriesV3Params) WithHTTPClient(client *http.Client) *AdminGetUserLoginHistoriesV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get user login histories v3 params
func (o *AdminGetUserLoginHistoriesV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get user login histories v3 params
func (o *AdminGetUserLoginHistoriesV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetUserLoginHistoriesV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get user login histories v3 params
func (o *AdminGetUserLoginHistoriesV3Params) WithNamespace(namespace string) *AdminGetUserLoginHistoriesV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get user login histories v3 params
func (o *AdminGetUserLoginHistoriesV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get user login histories v3 params
func (o *AdminGetUserLoginHistoriesV3Params) WithUserID(userID string) *AdminGetUserLoginHistoriesV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get user login histories v3 params
func (o *AdminGetUserLoginHistoriesV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WithAfter adds the after to the admin get user login histories v3 params
func (o *AdminGetUserLoginHistoriesV3Params) WithAfter(after *float64) *AdminGetUserLoginHistoriesV3Params {
	o.SetAfter(after)
	return o
}

// SetAfter adds the after to the admin get user login histories v3 params
func (o *AdminGetUserLoginHistoriesV3Params) SetAfter(after *float64) {
	o.After = after
}

// WithBefore adds the before to the admin get user login histories v3 params
func (o *AdminGetUserLoginHistoriesV3Params) WithBefore(before *float64) *AdminGetUserLoginHistoriesV3Params {
	o.SetBefore(before)
	return o
}

// SetBefore adds the before to the admin get user login histories v3 params
func (o *AdminGetUserLoginHistoriesV3Params) SetBefore(before *float64) {
	o.Before = before
}

// WithLimit adds the limit to the admin get user login histories v3 params
func (o *AdminGetUserLoginHistoriesV3Params) WithLimit(limit *int64) *AdminGetUserLoginHistoriesV3Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get user login histories v3 params
func (o *AdminGetUserLoginHistoriesV3Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetUserLoginHistoriesV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
