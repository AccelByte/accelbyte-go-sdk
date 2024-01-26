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

// NewAdminGetDeviceBansV4Params creates a new AdminGetDeviceBansV4Params object
// with the default values initialized.
func NewAdminGetDeviceBansV4Params() *AdminGetDeviceBansV4Params {
	var ()
	return &AdminGetDeviceBansV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetDeviceBansV4ParamsWithTimeout creates a new AdminGetDeviceBansV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetDeviceBansV4ParamsWithTimeout(timeout time.Duration) *AdminGetDeviceBansV4Params {
	var ()
	return &AdminGetDeviceBansV4Params{

		timeout: timeout,
	}
}

// NewAdminGetDeviceBansV4ParamsWithContext creates a new AdminGetDeviceBansV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetDeviceBansV4ParamsWithContext(ctx context.Context) *AdminGetDeviceBansV4Params {
	var ()
	return &AdminGetDeviceBansV4Params{

		Context: ctx,
	}
}

// NewAdminGetDeviceBansV4ParamsWithHTTPClient creates a new AdminGetDeviceBansV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetDeviceBansV4ParamsWithHTTPClient(client *http.Client) *AdminGetDeviceBansV4Params {
	var ()
	return &AdminGetDeviceBansV4Params{
		HTTPClient: client,
	}
}

/*AdminGetDeviceBansV4Params contains all the parameters to send to the API endpoint
for the admin get device bans v4 operation typically these are written to a http.Request
*/
type AdminGetDeviceBansV4Params struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get device bans v4 params
func (o *AdminGetDeviceBansV4Params) WithTimeout(timeout time.Duration) *AdminGetDeviceBansV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get device bans v4 params
func (o *AdminGetDeviceBansV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get device bans v4 params
func (o *AdminGetDeviceBansV4Params) WithContext(ctx context.Context) *AdminGetDeviceBansV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get device bans v4 params
func (o *AdminGetDeviceBansV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get device bans v4 params
func (o *AdminGetDeviceBansV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get device bans v4 params
func (o *AdminGetDeviceBansV4Params) WithHTTPClient(client *http.Client) *AdminGetDeviceBansV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get device bans v4 params
func (o *AdminGetDeviceBansV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get device bans v4 params
func (o *AdminGetDeviceBansV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetDeviceBansV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithDeviceID adds the deviceID to the admin get device bans v4 params
func (o *AdminGetDeviceBansV4Params) WithDeviceID(deviceID string) *AdminGetDeviceBansV4Params {
	o.SetDeviceID(deviceID)
	return o
}

// SetDeviceID adds the deviceId to the admin get device bans v4 params
func (o *AdminGetDeviceBansV4Params) SetDeviceID(deviceID string) {
	o.DeviceID = deviceID
}

// WithNamespace adds the namespace to the admin get device bans v4 params
func (o *AdminGetDeviceBansV4Params) WithNamespace(namespace string) *AdminGetDeviceBansV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get device bans v4 params
func (o *AdminGetDeviceBansV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetDeviceBansV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
