// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration

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

// NewAdminGetPlatformAccountClosureServicesConfigurationParams creates a new AdminGetPlatformAccountClosureServicesConfigurationParams object
// with the default values initialized.
func NewAdminGetPlatformAccountClosureServicesConfigurationParams() *AdminGetPlatformAccountClosureServicesConfigurationParams {
	var ()
	return &AdminGetPlatformAccountClosureServicesConfigurationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetPlatformAccountClosureServicesConfigurationParamsWithTimeout creates a new AdminGetPlatformAccountClosureServicesConfigurationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetPlatformAccountClosureServicesConfigurationParamsWithTimeout(timeout time.Duration) *AdminGetPlatformAccountClosureServicesConfigurationParams {
	var ()
	return &AdminGetPlatformAccountClosureServicesConfigurationParams{

		timeout: timeout,
	}
}

// NewAdminGetPlatformAccountClosureServicesConfigurationParamsWithContext creates a new AdminGetPlatformAccountClosureServicesConfigurationParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetPlatformAccountClosureServicesConfigurationParamsWithContext(ctx context.Context) *AdminGetPlatformAccountClosureServicesConfigurationParams {
	var ()
	return &AdminGetPlatformAccountClosureServicesConfigurationParams{

		Context: ctx,
	}
}

// NewAdminGetPlatformAccountClosureServicesConfigurationParamsWithHTTPClient creates a new AdminGetPlatformAccountClosureServicesConfigurationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetPlatformAccountClosureServicesConfigurationParamsWithHTTPClient(client *http.Client) *AdminGetPlatformAccountClosureServicesConfigurationParams {
	var ()
	return &AdminGetPlatformAccountClosureServicesConfigurationParams{
		HTTPClient: client,
	}
}

/*AdminGetPlatformAccountClosureServicesConfigurationParams contains all the parameters to send to the API endpoint
for the admin get platform account closure services configuration operation typically these are written to a http.Request
*/
type AdminGetPlatformAccountClosureServicesConfigurationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get platform account closure services configuration params
func (o *AdminGetPlatformAccountClosureServicesConfigurationParams) WithTimeout(timeout time.Duration) *AdminGetPlatformAccountClosureServicesConfigurationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get platform account closure services configuration params
func (o *AdminGetPlatformAccountClosureServicesConfigurationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get platform account closure services configuration params
func (o *AdminGetPlatformAccountClosureServicesConfigurationParams) WithContext(ctx context.Context) *AdminGetPlatformAccountClosureServicesConfigurationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get platform account closure services configuration params
func (o *AdminGetPlatformAccountClosureServicesConfigurationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get platform account closure services configuration params
func (o *AdminGetPlatformAccountClosureServicesConfigurationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get platform account closure services configuration params
func (o *AdminGetPlatformAccountClosureServicesConfigurationParams) WithHTTPClient(client *http.Client) *AdminGetPlatformAccountClosureServicesConfigurationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get platform account closure services configuration params
func (o *AdminGetPlatformAccountClosureServicesConfigurationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get platform account closure services configuration params
func (o *AdminGetPlatformAccountClosureServicesConfigurationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetPlatformAccountClosureServicesConfigurationParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get platform account closure services configuration params
func (o *AdminGetPlatformAccountClosureServicesConfigurationParams) WithNamespace(namespace string) *AdminGetPlatformAccountClosureServicesConfigurationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get platform account closure services configuration params
func (o *AdminGetPlatformAccountClosureServicesConfigurationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetPlatformAccountClosureServicesConfigurationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
