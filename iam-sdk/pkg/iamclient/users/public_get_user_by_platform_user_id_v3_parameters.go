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

// NewPublicGetUserByPlatformUserIDV3Params creates a new PublicGetUserByPlatformUserIDV3Params object
// with the default values initialized.
func NewPublicGetUserByPlatformUserIDV3Params() *PublicGetUserByPlatformUserIDV3Params {
	var ()
	return &PublicGetUserByPlatformUserIDV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserByPlatformUserIDV3ParamsWithTimeout creates a new PublicGetUserByPlatformUserIDV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserByPlatformUserIDV3ParamsWithTimeout(timeout time.Duration) *PublicGetUserByPlatformUserIDV3Params {
	var ()
	return &PublicGetUserByPlatformUserIDV3Params{

		timeout: timeout,
	}
}

// NewPublicGetUserByPlatformUserIDV3ParamsWithContext creates a new PublicGetUserByPlatformUserIDV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserByPlatformUserIDV3ParamsWithContext(ctx context.Context) *PublicGetUserByPlatformUserIDV3Params {
	var ()
	return &PublicGetUserByPlatformUserIDV3Params{

		Context: ctx,
	}
}

// NewPublicGetUserByPlatformUserIDV3ParamsWithHTTPClient creates a new PublicGetUserByPlatformUserIDV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserByPlatformUserIDV3ParamsWithHTTPClient(client *http.Client) *PublicGetUserByPlatformUserIDV3Params {
	var ()
	return &PublicGetUserByPlatformUserIDV3Params{
		HTTPClient: client,
	}
}

/*PublicGetUserByPlatformUserIDV3Params contains all the parameters to send to the API endpoint
for the public get user by platform user idv3 operation typically these are written to a http.Request
*/
type PublicGetUserByPlatformUserIDV3Params struct {

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

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get user by platform user idv3 params
func (o *PublicGetUserByPlatformUserIDV3Params) WithTimeout(timeout time.Duration) *PublicGetUserByPlatformUserIDV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user by platform user idv3 params
func (o *PublicGetUserByPlatformUserIDV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user by platform user idv3 params
func (o *PublicGetUserByPlatformUserIDV3Params) WithContext(ctx context.Context) *PublicGetUserByPlatformUserIDV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user by platform user idv3 params
func (o *PublicGetUserByPlatformUserIDV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user by platform user idv3 params
func (o *PublicGetUserByPlatformUserIDV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user by platform user idv3 params
func (o *PublicGetUserByPlatformUserIDV3Params) WithHTTPClient(client *http.Client) *PublicGetUserByPlatformUserIDV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user by platform user idv3 params
func (o *PublicGetUserByPlatformUserIDV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user by platform user idv3 params
func (o *PublicGetUserByPlatformUserIDV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetUserByPlatformUserIDV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get user by platform user idv3 params
func (o *PublicGetUserByPlatformUserIDV3Params) WithNamespace(namespace string) *PublicGetUserByPlatformUserIDV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user by platform user idv3 params
func (o *PublicGetUserByPlatformUserIDV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the public get user by platform user idv3 params
func (o *PublicGetUserByPlatformUserIDV3Params) WithPlatformID(platformID string) *PublicGetUserByPlatformUserIDV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the public get user by platform user idv3 params
func (o *PublicGetUserByPlatformUserIDV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithPlatformUserID adds the platformUserID to the public get user by platform user idv3 params
func (o *PublicGetUserByPlatformUserIDV3Params) WithPlatformUserID(platformUserID string) *PublicGetUserByPlatformUserIDV3Params {
	o.SetPlatformUserID(platformUserID)
	return o
}

// SetPlatformUserID adds the platformUserId to the public get user by platform user idv3 params
func (o *PublicGetUserByPlatformUserIDV3Params) SetPlatformUserID(platformUserID string) {
	o.PlatformUserID = platformUserID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserByPlatformUserIDV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
