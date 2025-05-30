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
)

// NewAdminGetUserByPlatformUserIDV3Params creates a new AdminGetUserByPlatformUserIDV3Params object
// with the default values initialized.
func NewAdminGetUserByPlatformUserIDV3Params() *AdminGetUserByPlatformUserIDV3Params {
	var ()
	return &AdminGetUserByPlatformUserIDV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetUserByPlatformUserIDV3ParamsWithTimeout creates a new AdminGetUserByPlatformUserIDV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetUserByPlatformUserIDV3ParamsWithTimeout(timeout time.Duration) *AdminGetUserByPlatformUserIDV3Params {
	var ()
	return &AdminGetUserByPlatformUserIDV3Params{

		timeout: timeout,
	}
}

// NewAdminGetUserByPlatformUserIDV3ParamsWithContext creates a new AdminGetUserByPlatformUserIDV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetUserByPlatformUserIDV3ParamsWithContext(ctx context.Context) *AdminGetUserByPlatformUserIDV3Params {
	var ()
	return &AdminGetUserByPlatformUserIDV3Params{

		Context: ctx,
	}
}

// NewAdminGetUserByPlatformUserIDV3ParamsWithHTTPClient creates a new AdminGetUserByPlatformUserIDV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetUserByPlatformUserIDV3ParamsWithHTTPClient(client *http.Client) *AdminGetUserByPlatformUserIDV3Params {
	var ()
	return &AdminGetUserByPlatformUserIDV3Params{
		HTTPClient: client,
	}
}

/*AdminGetUserByPlatformUserIDV3Params contains all the parameters to send to the API endpoint
for the admin get user by platform user idv3 operation typically these are written to a http.Request
*/
type AdminGetUserByPlatformUserIDV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*PlatformID
	  Platform ID

	*/
	PlatformID string
	/*PlatformUserID
	  Platform User ID

	*/
	PlatformUserID string
	/*PidType
	  Platform User ID Type

	*/
	PidType *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get user by platform user idv3 params
func (o *AdminGetUserByPlatformUserIDV3Params) WithTimeout(timeout time.Duration) *AdminGetUserByPlatformUserIDV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get user by platform user idv3 params
func (o *AdminGetUserByPlatformUserIDV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get user by platform user idv3 params
func (o *AdminGetUserByPlatformUserIDV3Params) WithContext(ctx context.Context) *AdminGetUserByPlatformUserIDV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get user by platform user idv3 params
func (o *AdminGetUserByPlatformUserIDV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get user by platform user idv3 params
func (o *AdminGetUserByPlatformUserIDV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get user by platform user idv3 params
func (o *AdminGetUserByPlatformUserIDV3Params) WithHTTPClient(client *http.Client) *AdminGetUserByPlatformUserIDV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get user by platform user idv3 params
func (o *AdminGetUserByPlatformUserIDV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get user by platform user idv3 params
func (o *AdminGetUserByPlatformUserIDV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetUserByPlatformUserIDV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get user by platform user idv3 params
func (o *AdminGetUserByPlatformUserIDV3Params) WithNamespace(namespace string) *AdminGetUserByPlatformUserIDV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get user by platform user idv3 params
func (o *AdminGetUserByPlatformUserIDV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the admin get user by platform user idv3 params
func (o *AdminGetUserByPlatformUserIDV3Params) WithPlatformID(platformID string) *AdminGetUserByPlatformUserIDV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the admin get user by platform user idv3 params
func (o *AdminGetUserByPlatformUserIDV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithPlatformUserID adds the platformUserID to the admin get user by platform user idv3 params
func (o *AdminGetUserByPlatformUserIDV3Params) WithPlatformUserID(platformUserID string) *AdminGetUserByPlatformUserIDV3Params {
	o.SetPlatformUserID(platformUserID)
	return o
}

// SetPlatformUserID adds the platformUserId to the admin get user by platform user idv3 params
func (o *AdminGetUserByPlatformUserIDV3Params) SetPlatformUserID(platformUserID string) {
	o.PlatformUserID = platformUserID
}

// WithPidType adds the pidType to the admin get user by platform user idv3 params
func (o *AdminGetUserByPlatformUserIDV3Params) WithPidType(pidType *string) *AdminGetUserByPlatformUserIDV3Params {
	o.SetPidType(pidType)
	return o
}

// SetPidType adds the pidType to the admin get user by platform user idv3 params
func (o *AdminGetUserByPlatformUserIDV3Params) SetPidType(pidType *string) {
	o.PidType = pidType
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetUserByPlatformUserIDV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
		return err
	}

	// path param platformUserId
	if err := r.SetPathParam("platformUserId", o.PlatformUserID); err != nil {
		return err
	}

	if o.PidType != nil {

		// query param pidType
		var qrPidType string
		if o.PidType != nil {
			qrPidType = *o.PidType
		}
		qPidType := qrPidType
		if qPidType != "" {
			if err := r.SetQueryParam("pidType", qPidType); err != nil {
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
