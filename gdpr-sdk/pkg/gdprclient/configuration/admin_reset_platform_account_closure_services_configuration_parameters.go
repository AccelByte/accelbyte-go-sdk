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

// NewAdminResetPlatformAccountClosureServicesConfigurationParams creates a new AdminResetPlatformAccountClosureServicesConfigurationParams object
// with the default values initialized.
func NewAdminResetPlatformAccountClosureServicesConfigurationParams() *AdminResetPlatformAccountClosureServicesConfigurationParams {
	var ()
	return &AdminResetPlatformAccountClosureServicesConfigurationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminResetPlatformAccountClosureServicesConfigurationParamsWithTimeout creates a new AdminResetPlatformAccountClosureServicesConfigurationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminResetPlatformAccountClosureServicesConfigurationParamsWithTimeout(timeout time.Duration) *AdminResetPlatformAccountClosureServicesConfigurationParams {
	var ()
	return &AdminResetPlatformAccountClosureServicesConfigurationParams{

		timeout: timeout,
	}
}

// NewAdminResetPlatformAccountClosureServicesConfigurationParamsWithContext creates a new AdminResetPlatformAccountClosureServicesConfigurationParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminResetPlatformAccountClosureServicesConfigurationParamsWithContext(ctx context.Context) *AdminResetPlatformAccountClosureServicesConfigurationParams {
	var ()
	return &AdminResetPlatformAccountClosureServicesConfigurationParams{

		Context: ctx,
	}
}

// NewAdminResetPlatformAccountClosureServicesConfigurationParamsWithHTTPClient creates a new AdminResetPlatformAccountClosureServicesConfigurationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminResetPlatformAccountClosureServicesConfigurationParamsWithHTTPClient(client *http.Client) *AdminResetPlatformAccountClosureServicesConfigurationParams {
	var ()
	return &AdminResetPlatformAccountClosureServicesConfigurationParams{
		HTTPClient: client,
	}
}

/*AdminResetPlatformAccountClosureServicesConfigurationParams contains all the parameters to send to the API endpoint
for the admin reset platform account closure services configuration operation typically these are written to a http.Request
*/
type AdminResetPlatformAccountClosureServicesConfigurationParams struct {

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

// WithTimeout adds the timeout to the admin reset platform account closure services configuration params
func (o *AdminResetPlatformAccountClosureServicesConfigurationParams) WithTimeout(timeout time.Duration) *AdminResetPlatformAccountClosureServicesConfigurationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin reset platform account closure services configuration params
func (o *AdminResetPlatformAccountClosureServicesConfigurationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin reset platform account closure services configuration params
func (o *AdminResetPlatformAccountClosureServicesConfigurationParams) WithContext(ctx context.Context) *AdminResetPlatformAccountClosureServicesConfigurationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin reset platform account closure services configuration params
func (o *AdminResetPlatformAccountClosureServicesConfigurationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin reset platform account closure services configuration params
func (o *AdminResetPlatformAccountClosureServicesConfigurationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin reset platform account closure services configuration params
func (o *AdminResetPlatformAccountClosureServicesConfigurationParams) WithHTTPClient(client *http.Client) *AdminResetPlatformAccountClosureServicesConfigurationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin reset platform account closure services configuration params
func (o *AdminResetPlatformAccountClosureServicesConfigurationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin reset platform account closure services configuration params
func (o *AdminResetPlatformAccountClosureServicesConfigurationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminResetPlatformAccountClosureServicesConfigurationParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin reset platform account closure services configuration params
func (o *AdminResetPlatformAccountClosureServicesConfigurationParams) WithNamespace(namespace string) *AdminResetPlatformAccountClosureServicesConfigurationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin reset platform account closure services configuration params
func (o *AdminResetPlatformAccountClosureServicesConfigurationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminResetPlatformAccountClosureServicesConfigurationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
