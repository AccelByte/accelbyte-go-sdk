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

// NewAdminGetPlatformAccountClosureClientParams creates a new AdminGetPlatformAccountClosureClientParams object
// with the default values initialized.
func NewAdminGetPlatformAccountClosureClientParams() *AdminGetPlatformAccountClosureClientParams {
	var ()
	return &AdminGetPlatformAccountClosureClientParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetPlatformAccountClosureClientParamsWithTimeout creates a new AdminGetPlatformAccountClosureClientParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetPlatformAccountClosureClientParamsWithTimeout(timeout time.Duration) *AdminGetPlatformAccountClosureClientParams {
	var ()
	return &AdminGetPlatformAccountClosureClientParams{

		timeout: timeout,
	}
}

// NewAdminGetPlatformAccountClosureClientParamsWithContext creates a new AdminGetPlatformAccountClosureClientParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetPlatformAccountClosureClientParamsWithContext(ctx context.Context) *AdminGetPlatformAccountClosureClientParams {
	var ()
	return &AdminGetPlatformAccountClosureClientParams{

		Context: ctx,
	}
}

// NewAdminGetPlatformAccountClosureClientParamsWithHTTPClient creates a new AdminGetPlatformAccountClosureClientParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetPlatformAccountClosureClientParamsWithHTTPClient(client *http.Client) *AdminGetPlatformAccountClosureClientParams {
	var ()
	return &AdminGetPlatformAccountClosureClientParams{
		HTTPClient: client,
	}
}

/*AdminGetPlatformAccountClosureClientParams contains all the parameters to send to the API endpoint
for the admin get platform account closure client operation typically these are written to a http.Request
*/
type AdminGetPlatformAccountClosureClientParams struct {

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

// WithTimeout adds the timeout to the admin get platform account closure client params
func (o *AdminGetPlatformAccountClosureClientParams) WithTimeout(timeout time.Duration) *AdminGetPlatformAccountClosureClientParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get platform account closure client params
func (o *AdminGetPlatformAccountClosureClientParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get platform account closure client params
func (o *AdminGetPlatformAccountClosureClientParams) WithContext(ctx context.Context) *AdminGetPlatformAccountClosureClientParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get platform account closure client params
func (o *AdminGetPlatformAccountClosureClientParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get platform account closure client params
func (o *AdminGetPlatformAccountClosureClientParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get platform account closure client params
func (o *AdminGetPlatformAccountClosureClientParams) WithHTTPClient(client *http.Client) *AdminGetPlatformAccountClosureClientParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get platform account closure client params
func (o *AdminGetPlatformAccountClosureClientParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get platform account closure client params
func (o *AdminGetPlatformAccountClosureClientParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetPlatformAccountClosureClientParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get platform account closure client params
func (o *AdminGetPlatformAccountClosureClientParams) WithNamespace(namespace string) *AdminGetPlatformAccountClosureClientParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get platform account closure client params
func (o *AdminGetPlatformAccountClosureClientParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatform adds the platform to the admin get platform account closure client params
func (o *AdminGetPlatformAccountClosureClientParams) WithPlatform(platform string) *AdminGetPlatformAccountClosureClientParams {
	o.SetPlatform(platform)
	return o
}

// SetPlatform adds the platform to the admin get platform account closure client params
func (o *AdminGetPlatformAccountClosureClientParams) SetPlatform(platform string) {
	o.Platform = platform
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetPlatformAccountClosureClientParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
