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

// NewAdminGetUserSinglePlatformAccountParams creates a new AdminGetUserSinglePlatformAccountParams object
// with the default values initialized.
func NewAdminGetUserSinglePlatformAccountParams() *AdminGetUserSinglePlatformAccountParams {
	var (
		crossNamespaceDefault = bool(false)
	)
	return &AdminGetUserSinglePlatformAccountParams{
		CrossNamespace: &crossNamespaceDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetUserSinglePlatformAccountParamsWithTimeout creates a new AdminGetUserSinglePlatformAccountParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetUserSinglePlatformAccountParamsWithTimeout(timeout time.Duration) *AdminGetUserSinglePlatformAccountParams {
	var (
		crossNamespaceDefault = bool(false)
	)
	return &AdminGetUserSinglePlatformAccountParams{
		CrossNamespace: &crossNamespaceDefault,

		timeout: timeout,
	}
}

// NewAdminGetUserSinglePlatformAccountParamsWithContext creates a new AdminGetUserSinglePlatformAccountParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetUserSinglePlatformAccountParamsWithContext(ctx context.Context) *AdminGetUserSinglePlatformAccountParams {
	var (
		crossNamespaceDefault = bool(false)
	)
	return &AdminGetUserSinglePlatformAccountParams{
		CrossNamespace: &crossNamespaceDefault,

		Context: ctx,
	}
}

// NewAdminGetUserSinglePlatformAccountParamsWithHTTPClient creates a new AdminGetUserSinglePlatformAccountParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetUserSinglePlatformAccountParamsWithHTTPClient(client *http.Client) *AdminGetUserSinglePlatformAccountParams {
	var (
		crossNamespaceDefault = bool(false)
	)
	return &AdminGetUserSinglePlatformAccountParams{
		CrossNamespace: &crossNamespaceDefault,
		HTTPClient:     client,
	}
}

/*AdminGetUserSinglePlatformAccountParams contains all the parameters to send to the API endpoint
for the admin get user single platform account operation typically these are written to a http.Request
*/
type AdminGetUserSinglePlatformAccountParams struct {

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
	/*UserID
	  Publisher or game User ID

	*/
	UserID string
	/*CrossNamespace
	  By default, this API will query the platform account in the specified namespace path only. If 'crossNamespace' is set to true, it will query across all namespaces and find one.

	*/
	CrossNamespace *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get user single platform account params
func (o *AdminGetUserSinglePlatformAccountParams) WithTimeout(timeout time.Duration) *AdminGetUserSinglePlatformAccountParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get user single platform account params
func (o *AdminGetUserSinglePlatformAccountParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get user single platform account params
func (o *AdminGetUserSinglePlatformAccountParams) WithContext(ctx context.Context) *AdminGetUserSinglePlatformAccountParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get user single platform account params
func (o *AdminGetUserSinglePlatformAccountParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get user single platform account params
func (o *AdminGetUserSinglePlatformAccountParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get user single platform account params
func (o *AdminGetUserSinglePlatformAccountParams) WithHTTPClient(client *http.Client) *AdminGetUserSinglePlatformAccountParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get user single platform account params
func (o *AdminGetUserSinglePlatformAccountParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get user single platform account params
func (o *AdminGetUserSinglePlatformAccountParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetUserSinglePlatformAccountParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get user single platform account params
func (o *AdminGetUserSinglePlatformAccountParams) WithNamespace(namespace string) *AdminGetUserSinglePlatformAccountParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get user single platform account params
func (o *AdminGetUserSinglePlatformAccountParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the admin get user single platform account params
func (o *AdminGetUserSinglePlatformAccountParams) WithPlatformID(platformID string) *AdminGetUserSinglePlatformAccountParams {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the admin get user single platform account params
func (o *AdminGetUserSinglePlatformAccountParams) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithUserID adds the userID to the admin get user single platform account params
func (o *AdminGetUserSinglePlatformAccountParams) WithUserID(userID string) *AdminGetUserSinglePlatformAccountParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get user single platform account params
func (o *AdminGetUserSinglePlatformAccountParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithCrossNamespace adds the crossNamespace to the admin get user single platform account params
func (o *AdminGetUserSinglePlatformAccountParams) WithCrossNamespace(crossNamespace *bool) *AdminGetUserSinglePlatformAccountParams {
	o.SetCrossNamespace(crossNamespace)
	return o
}

// SetCrossNamespace adds the crossNamespace to the admin get user single platform account params
func (o *AdminGetUserSinglePlatformAccountParams) SetCrossNamespace(crossNamespace *bool) {
	o.CrossNamespace = crossNamespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetUserSinglePlatformAccountParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.CrossNamespace != nil {

		// query param crossNamespace
		var qrCrossNamespace bool
		if o.CrossNamespace != nil {
			qrCrossNamespace = *o.CrossNamespace
		}
		qCrossNamespace := swag.FormatBool(qrCrossNamespace)
		if qCrossNamespace != "" {
			if err := r.SetQueryParam("crossNamespace", qCrossNamespace); err != nil {
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
