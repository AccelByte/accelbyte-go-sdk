// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package devices_v4

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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

// NewAdminUnbanDeviceV4Params creates a new AdminUnbanDeviceV4Params object
// with the default values initialized.
func NewAdminUnbanDeviceV4Params() *AdminUnbanDeviceV4Params {
	var ()
	return &AdminUnbanDeviceV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUnbanDeviceV4ParamsWithTimeout creates a new AdminUnbanDeviceV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUnbanDeviceV4ParamsWithTimeout(timeout time.Duration) *AdminUnbanDeviceV4Params {
	var ()
	return &AdminUnbanDeviceV4Params{

		timeout: timeout,
	}
}

// NewAdminUnbanDeviceV4ParamsWithContext creates a new AdminUnbanDeviceV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUnbanDeviceV4ParamsWithContext(ctx context.Context) *AdminUnbanDeviceV4Params {
	var ()
	return &AdminUnbanDeviceV4Params{

		Context: ctx,
	}
}

// NewAdminUnbanDeviceV4ParamsWithHTTPClient creates a new AdminUnbanDeviceV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUnbanDeviceV4ParamsWithHTTPClient(client *http.Client) *AdminUnbanDeviceV4Params {
	var ()
	return &AdminUnbanDeviceV4Params{
		HTTPClient: client,
	}
}

/*AdminUnbanDeviceV4Params contains all the parameters to send to the API endpoint
for the admin unban device v4 operation typically these are written to a http.Request
*/
type AdminUnbanDeviceV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*DeviceID
	  device id

	*/
	DeviceID string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin unban device v4 params
func (o *AdminUnbanDeviceV4Params) WithTimeout(timeout time.Duration) *AdminUnbanDeviceV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin unban device v4 params
func (o *AdminUnbanDeviceV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin unban device v4 params
func (o *AdminUnbanDeviceV4Params) WithContext(ctx context.Context) *AdminUnbanDeviceV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin unban device v4 params
func (o *AdminUnbanDeviceV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin unban device v4 params
func (o *AdminUnbanDeviceV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin unban device v4 params
func (o *AdminUnbanDeviceV4Params) WithHTTPClient(client *http.Client) *AdminUnbanDeviceV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin unban device v4 params
func (o *AdminUnbanDeviceV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin unban device v4 params
func (o *AdminUnbanDeviceV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithDeviceID adds the deviceID to the admin unban device v4 params
func (o *AdminUnbanDeviceV4Params) WithDeviceID(deviceID string) *AdminUnbanDeviceV4Params {
	o.SetDeviceID(deviceID)
	return o
}

// SetDeviceID adds the deviceId to the admin unban device v4 params
func (o *AdminUnbanDeviceV4Params) SetDeviceID(deviceID string) {
	o.DeviceID = deviceID
}

// WithNamespace adds the namespace to the admin unban device v4 params
func (o *AdminUnbanDeviceV4Params) WithNamespace(namespace string) *AdminUnbanDeviceV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin unban device v4 params
func (o *AdminUnbanDeviceV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUnbanDeviceV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param deviceId
	if err := r.SetPathParam("deviceId", o.DeviceID); err != nil {
		return err
	}

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
