// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clients_config_v3

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

// NewAdminListClientAvailablePermissionsParams creates a new AdminListClientAvailablePermissionsParams object
// with the default values initialized.
func NewAdminListClientAvailablePermissionsParams() *AdminListClientAvailablePermissionsParams {
	var (
		excludePermissionsDefault = bool(false)
	)
	return &AdminListClientAvailablePermissionsParams{
		ExcludePermissions: &excludePermissionsDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListClientAvailablePermissionsParamsWithTimeout creates a new AdminListClientAvailablePermissionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListClientAvailablePermissionsParamsWithTimeout(timeout time.Duration) *AdminListClientAvailablePermissionsParams {
	var (
		excludePermissionsDefault = bool(false)
	)
	return &AdminListClientAvailablePermissionsParams{
		ExcludePermissions: &excludePermissionsDefault,

		timeout: timeout,
	}
}

// NewAdminListClientAvailablePermissionsParamsWithContext creates a new AdminListClientAvailablePermissionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListClientAvailablePermissionsParamsWithContext(ctx context.Context) *AdminListClientAvailablePermissionsParams {
	var (
		excludePermissionsDefault = bool(false)
	)
	return &AdminListClientAvailablePermissionsParams{
		ExcludePermissions: &excludePermissionsDefault,

		Context: ctx,
	}
}

// NewAdminListClientAvailablePermissionsParamsWithHTTPClient creates a new AdminListClientAvailablePermissionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListClientAvailablePermissionsParamsWithHTTPClient(client *http.Client) *AdminListClientAvailablePermissionsParams {
	var (
		excludePermissionsDefault = bool(false)
	)
	return &AdminListClientAvailablePermissionsParams{
		ExcludePermissions: &excludePermissionsDefault,
		HTTPClient:         client,
	}
}

/*AdminListClientAvailablePermissionsParams contains all the parameters to send to the API endpoint
for the admin list client available permissions operation typically these are written to a http.Request
*/
type AdminListClientAvailablePermissionsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ExcludePermissions
	  If exclude permissions

	*/
	ExcludePermissions *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin list client available permissions params
func (o *AdminListClientAvailablePermissionsParams) WithTimeout(timeout time.Duration) *AdminListClientAvailablePermissionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list client available permissions params
func (o *AdminListClientAvailablePermissionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list client available permissions params
func (o *AdminListClientAvailablePermissionsParams) WithContext(ctx context.Context) *AdminListClientAvailablePermissionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list client available permissions params
func (o *AdminListClientAvailablePermissionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list client available permissions params
func (o *AdminListClientAvailablePermissionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list client available permissions params
func (o *AdminListClientAvailablePermissionsParams) WithHTTPClient(client *http.Client) *AdminListClientAvailablePermissionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list client available permissions params
func (o *AdminListClientAvailablePermissionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list client available permissions params
func (o *AdminListClientAvailablePermissionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminListClientAvailablePermissionsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithExcludePermissions adds the excludePermissions to the admin list client available permissions params
func (o *AdminListClientAvailablePermissionsParams) WithExcludePermissions(excludePermissions *bool) *AdminListClientAvailablePermissionsParams {
	o.SetExcludePermissions(excludePermissions)
	return o
}

// SetExcludePermissions adds the excludePermissions to the admin list client available permissions params
func (o *AdminListClientAvailablePermissionsParams) SetExcludePermissions(excludePermissions *bool) {
	o.ExcludePermissions = excludePermissions
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListClientAvailablePermissionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.ExcludePermissions != nil {

		// query param excludePermissions
		var qrExcludePermissions bool
		if o.ExcludePermissions != nil {
			qrExcludePermissions = *o.ExcludePermissions
		}
		qExcludePermissions := swag.FormatBool(qrExcludePermissions)
		if qExcludePermissions != "" {
			if err := r.SetQueryParam("excludePermissions", qExcludePermissions); err != nil {
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
