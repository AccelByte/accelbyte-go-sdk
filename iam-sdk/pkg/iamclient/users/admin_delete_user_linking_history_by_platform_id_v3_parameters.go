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

// NewAdminDeleteUserLinkingHistoryByPlatformIDV3Params creates a new AdminDeleteUserLinkingHistoryByPlatformIDV3Params object
// with the default values initialized.
func NewAdminDeleteUserLinkingHistoryByPlatformIDV3Params() *AdminDeleteUserLinkingHistoryByPlatformIDV3Params {
	var ()
	return &AdminDeleteUserLinkingHistoryByPlatformIDV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteUserLinkingHistoryByPlatformIDV3ParamsWithTimeout creates a new AdminDeleteUserLinkingHistoryByPlatformIDV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteUserLinkingHistoryByPlatformIDV3ParamsWithTimeout(timeout time.Duration) *AdminDeleteUserLinkingHistoryByPlatformIDV3Params {
	var ()
	return &AdminDeleteUserLinkingHistoryByPlatformIDV3Params{

		timeout: timeout,
	}
}

// NewAdminDeleteUserLinkingHistoryByPlatformIDV3ParamsWithContext creates a new AdminDeleteUserLinkingHistoryByPlatformIDV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteUserLinkingHistoryByPlatformIDV3ParamsWithContext(ctx context.Context) *AdminDeleteUserLinkingHistoryByPlatformIDV3Params {
	var ()
	return &AdminDeleteUserLinkingHistoryByPlatformIDV3Params{

		Context: ctx,
	}
}

// NewAdminDeleteUserLinkingHistoryByPlatformIDV3ParamsWithHTTPClient creates a new AdminDeleteUserLinkingHistoryByPlatformIDV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteUserLinkingHistoryByPlatformIDV3ParamsWithHTTPClient(client *http.Client) *AdminDeleteUserLinkingHistoryByPlatformIDV3Params {
	var ()
	return &AdminDeleteUserLinkingHistoryByPlatformIDV3Params{
		HTTPClient: client,
	}
}

/*AdminDeleteUserLinkingHistoryByPlatformIDV3Params contains all the parameters to send to the API endpoint
for the admin delete user linking history by platform idv3 operation typically these are written to a http.Request
*/
type AdminDeleteUserLinkingHistoryByPlatformIDV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*PlatformID
	  Target platform id

	*/
	PlatformID string
	/*UserID
	  User ID, should follow UUID version 4 without hyphen

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin delete user linking history by platform idv3 params
func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3Params) WithTimeout(timeout time.Duration) *AdminDeleteUserLinkingHistoryByPlatformIDV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete user linking history by platform idv3 params
func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete user linking history by platform idv3 params
func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3Params) WithContext(ctx context.Context) *AdminDeleteUserLinkingHistoryByPlatformIDV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete user linking history by platform idv3 params
func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete user linking history by platform idv3 params
func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete user linking history by platform idv3 params
func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3Params) WithHTTPClient(client *http.Client) *AdminDeleteUserLinkingHistoryByPlatformIDV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete user linking history by platform idv3 params
func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete user linking history by platform idv3 params
func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin delete user linking history by platform idv3 params
func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3Params) WithNamespace(namespace string) *AdminDeleteUserLinkingHistoryByPlatformIDV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete user linking history by platform idv3 params
func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the admin delete user linking history by platform idv3 params
func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3Params) WithPlatformID(platformID string) *AdminDeleteUserLinkingHistoryByPlatformIDV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the admin delete user linking history by platform idv3 params
func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithUserID adds the userID to the admin delete user linking history by platform idv3 params
func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3Params) WithUserID(userID string) *AdminDeleteUserLinkingHistoryByPlatformIDV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin delete user linking history by platform idv3 params
func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
