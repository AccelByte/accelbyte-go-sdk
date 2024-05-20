// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platform_account_closure_client

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

// NewAdminDeletePlatformAccountClosureClientParams creates a new AdminDeletePlatformAccountClosureClientParams object
// with the default values initialized.
func NewAdminDeletePlatformAccountClosureClientParams() *AdminDeletePlatformAccountClosureClientParams {
	var ()
	return &AdminDeletePlatformAccountClosureClientParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeletePlatformAccountClosureClientParamsWithTimeout creates a new AdminDeletePlatformAccountClosureClientParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeletePlatformAccountClosureClientParamsWithTimeout(timeout time.Duration) *AdminDeletePlatformAccountClosureClientParams {
	var ()
	return &AdminDeletePlatformAccountClosureClientParams{

		timeout: timeout,
	}
}

// NewAdminDeletePlatformAccountClosureClientParamsWithContext creates a new AdminDeletePlatformAccountClosureClientParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeletePlatformAccountClosureClientParamsWithContext(ctx context.Context) *AdminDeletePlatformAccountClosureClientParams {
	var ()
	return &AdminDeletePlatformAccountClosureClientParams{

		Context: ctx,
	}
}

// NewAdminDeletePlatformAccountClosureClientParamsWithHTTPClient creates a new AdminDeletePlatformAccountClosureClientParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeletePlatformAccountClosureClientParamsWithHTTPClient(client *http.Client) *AdminDeletePlatformAccountClosureClientParams {
	var ()
	return &AdminDeletePlatformAccountClosureClientParams{
		HTTPClient: client,
	}
}

/*AdminDeletePlatformAccountClosureClientParams contains all the parameters to send to the API endpoint
for the admin delete platform account closure client operation typically these are written to a http.Request
*/
type AdminDeletePlatformAccountClosureClientParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Platform
	  3rd party platform

	*/
	Platform string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin delete platform account closure client params
func (o *AdminDeletePlatformAccountClosureClientParams) WithTimeout(timeout time.Duration) *AdminDeletePlatformAccountClosureClientParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete platform account closure client params
func (o *AdminDeletePlatformAccountClosureClientParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete platform account closure client params
func (o *AdminDeletePlatformAccountClosureClientParams) WithContext(ctx context.Context) *AdminDeletePlatformAccountClosureClientParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete platform account closure client params
func (o *AdminDeletePlatformAccountClosureClientParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete platform account closure client params
func (o *AdminDeletePlatformAccountClosureClientParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete platform account closure client params
func (o *AdminDeletePlatformAccountClosureClientParams) WithHTTPClient(client *http.Client) *AdminDeletePlatformAccountClosureClientParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete platform account closure client params
func (o *AdminDeletePlatformAccountClosureClientParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete platform account closure client params
func (o *AdminDeletePlatformAccountClosureClientParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeletePlatformAccountClosureClientParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin delete platform account closure client params
func (o *AdminDeletePlatformAccountClosureClientParams) WithNamespace(namespace string) *AdminDeletePlatformAccountClosureClientParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete platform account closure client params
func (o *AdminDeletePlatformAccountClosureClientParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatform adds the platform to the admin delete platform account closure client params
func (o *AdminDeletePlatformAccountClosureClientParams) WithPlatform(platform string) *AdminDeletePlatformAccountClosureClientParams {
	o.SetPlatform(platform)
	return o
}

// SetPlatform adds the platform to the admin delete platform account closure client params
func (o *AdminDeletePlatformAccountClosureClientParams) SetPlatform(platform string) {
	o.Platform = platform
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeletePlatformAccountClosureClientParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param platform
	if err := r.SetPathParam("platform", o.Platform); err != nil {
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
