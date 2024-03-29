// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration_template

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

// NewAdminGetConfigurationAlertV1Params creates a new AdminGetConfigurationAlertV1Params object
// with the default values initialized.
func NewAdminGetConfigurationAlertV1Params() *AdminGetConfigurationAlertV1Params {
	var ()
	return &AdminGetConfigurationAlertV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetConfigurationAlertV1ParamsWithTimeout creates a new AdminGetConfigurationAlertV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetConfigurationAlertV1ParamsWithTimeout(timeout time.Duration) *AdminGetConfigurationAlertV1Params {
	var ()
	return &AdminGetConfigurationAlertV1Params{

		timeout: timeout,
	}
}

// NewAdminGetConfigurationAlertV1ParamsWithContext creates a new AdminGetConfigurationAlertV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetConfigurationAlertV1ParamsWithContext(ctx context.Context) *AdminGetConfigurationAlertV1Params {
	var ()
	return &AdminGetConfigurationAlertV1Params{

		Context: ctx,
	}
}

// NewAdminGetConfigurationAlertV1ParamsWithHTTPClient creates a new AdminGetConfigurationAlertV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetConfigurationAlertV1ParamsWithHTTPClient(client *http.Client) *AdminGetConfigurationAlertV1Params {
	var ()
	return &AdminGetConfigurationAlertV1Params{
		HTTPClient: client,
	}
}

/*AdminGetConfigurationAlertV1Params contains all the parameters to send to the API endpoint
for the admin get configuration alert v1 operation typically these are written to a http.Request
*/
type AdminGetConfigurationAlertV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get configuration alert v1 params
func (o *AdminGetConfigurationAlertV1Params) WithTimeout(timeout time.Duration) *AdminGetConfigurationAlertV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get configuration alert v1 params
func (o *AdminGetConfigurationAlertV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get configuration alert v1 params
func (o *AdminGetConfigurationAlertV1Params) WithContext(ctx context.Context) *AdminGetConfigurationAlertV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get configuration alert v1 params
func (o *AdminGetConfigurationAlertV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get configuration alert v1 params
func (o *AdminGetConfigurationAlertV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get configuration alert v1 params
func (o *AdminGetConfigurationAlertV1Params) WithHTTPClient(client *http.Client) *AdminGetConfigurationAlertV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get configuration alert v1 params
func (o *AdminGetConfigurationAlertV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get configuration alert v1 params
func (o *AdminGetConfigurationAlertV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetConfigurationAlertV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get configuration alert v1 params
func (o *AdminGetConfigurationAlertV1Params) WithNamespace(namespace string) *AdminGetConfigurationAlertV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get configuration alert v1 params
func (o *AdminGetConfigurationAlertV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetConfigurationAlertV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
