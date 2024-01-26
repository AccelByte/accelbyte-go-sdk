// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package global_configuration

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

// NewAdminListGlobalConfigurationParams creates a new AdminListGlobalConfigurationParams object
// with the default values initialized.
func NewAdminListGlobalConfigurationParams() *AdminListGlobalConfigurationParams {
	var ()
	return &AdminListGlobalConfigurationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListGlobalConfigurationParamsWithTimeout creates a new AdminListGlobalConfigurationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListGlobalConfigurationParamsWithTimeout(timeout time.Duration) *AdminListGlobalConfigurationParams {
	var ()
	return &AdminListGlobalConfigurationParams{

		timeout: timeout,
	}
}

// NewAdminListGlobalConfigurationParamsWithContext creates a new AdminListGlobalConfigurationParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListGlobalConfigurationParamsWithContext(ctx context.Context) *AdminListGlobalConfigurationParams {
	var ()
	return &AdminListGlobalConfigurationParams{

		Context: ctx,
	}
}

// NewAdminListGlobalConfigurationParamsWithHTTPClient creates a new AdminListGlobalConfigurationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListGlobalConfigurationParamsWithHTTPClient(client *http.Client) *AdminListGlobalConfigurationParams {
	var ()
	return &AdminListGlobalConfigurationParams{
		HTTPClient: client,
	}
}

/*AdminListGlobalConfigurationParams contains all the parameters to send to the API endpoint
for the admin list global configuration operation typically these are written to a http.Request
*/
type AdminListGlobalConfigurationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin list global configuration params
func (o *AdminListGlobalConfigurationParams) WithTimeout(timeout time.Duration) *AdminListGlobalConfigurationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list global configuration params
func (o *AdminListGlobalConfigurationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list global configuration params
func (o *AdminListGlobalConfigurationParams) WithContext(ctx context.Context) *AdminListGlobalConfigurationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list global configuration params
func (o *AdminListGlobalConfigurationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list global configuration params
func (o *AdminListGlobalConfigurationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list global configuration params
func (o *AdminListGlobalConfigurationParams) WithHTTPClient(client *http.Client) *AdminListGlobalConfigurationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list global configuration params
func (o *AdminListGlobalConfigurationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list global configuration params
func (o *AdminListGlobalConfigurationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminListGlobalConfigurationParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListGlobalConfigurationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
