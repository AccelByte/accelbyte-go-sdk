// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package devices_v4

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

// NewAdminGetUsersByDeviceV4Params creates a new AdminGetUsersByDeviceV4Params object
// with the default values initialized.
func NewAdminGetUsersByDeviceV4Params() *AdminGetUsersByDeviceV4Params {
	var ()
	return &AdminGetUsersByDeviceV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetUsersByDeviceV4ParamsWithTimeout creates a new AdminGetUsersByDeviceV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetUsersByDeviceV4ParamsWithTimeout(timeout time.Duration) *AdminGetUsersByDeviceV4Params {
	var ()
	return &AdminGetUsersByDeviceV4Params{

		timeout: timeout,
	}
}

// NewAdminGetUsersByDeviceV4ParamsWithContext creates a new AdminGetUsersByDeviceV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetUsersByDeviceV4ParamsWithContext(ctx context.Context) *AdminGetUsersByDeviceV4Params {
	var ()
	return &AdminGetUsersByDeviceV4Params{

		Context: ctx,
	}
}

// NewAdminGetUsersByDeviceV4ParamsWithHTTPClient creates a new AdminGetUsersByDeviceV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetUsersByDeviceV4ParamsWithHTTPClient(client *http.Client) *AdminGetUsersByDeviceV4Params {
	var ()
	return &AdminGetUsersByDeviceV4Params{
		HTTPClient: client,
	}
}

/*AdminGetUsersByDeviceV4Params contains all the parameters to send to the API endpoint
for the admin get users by device v4 operation typically these are written to a http.Request
*/
type AdminGetUsersByDeviceV4Params struct {

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

// WithTimeout adds the timeout to the admin get users by device v4 params
func (o *AdminGetUsersByDeviceV4Params) WithTimeout(timeout time.Duration) *AdminGetUsersByDeviceV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get users by device v4 params
func (o *AdminGetUsersByDeviceV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get users by device v4 params
func (o *AdminGetUsersByDeviceV4Params) WithContext(ctx context.Context) *AdminGetUsersByDeviceV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get users by device v4 params
func (o *AdminGetUsersByDeviceV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get users by device v4 params
func (o *AdminGetUsersByDeviceV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get users by device v4 params
func (o *AdminGetUsersByDeviceV4Params) WithHTTPClient(client *http.Client) *AdminGetUsersByDeviceV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get users by device v4 params
func (o *AdminGetUsersByDeviceV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get users by device v4 params
func (o *AdminGetUsersByDeviceV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithDeviceID adds the deviceID to the admin get users by device v4 params
func (o *AdminGetUsersByDeviceV4Params) WithDeviceID(deviceID string) *AdminGetUsersByDeviceV4Params {
	o.SetDeviceID(deviceID)
	return o
}

// SetDeviceID adds the deviceId to the admin get users by device v4 params
func (o *AdminGetUsersByDeviceV4Params) SetDeviceID(deviceID string) {
	o.DeviceID = deviceID
}

// WithNamespace adds the namespace to the admin get users by device v4 params
func (o *AdminGetUsersByDeviceV4Params) WithNamespace(namespace string) *AdminGetUsersByDeviceV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get users by device v4 params
func (o *AdminGetUsersByDeviceV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetUsersByDeviceV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
