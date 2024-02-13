// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users_v4

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

// NewAdminEnableBackupCodesV4Params creates a new AdminEnableBackupCodesV4Params object
// with the default values initialized.
func NewAdminEnableBackupCodesV4Params() *AdminEnableBackupCodesV4Params {
	var ()
	return &AdminEnableBackupCodesV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminEnableBackupCodesV4ParamsWithTimeout creates a new AdminEnableBackupCodesV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminEnableBackupCodesV4ParamsWithTimeout(timeout time.Duration) *AdminEnableBackupCodesV4Params {
	var ()
	return &AdminEnableBackupCodesV4Params{

		timeout: timeout,
	}
}

// NewAdminEnableBackupCodesV4ParamsWithContext creates a new AdminEnableBackupCodesV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminEnableBackupCodesV4ParamsWithContext(ctx context.Context) *AdminEnableBackupCodesV4Params {
	var ()
	return &AdminEnableBackupCodesV4Params{

		Context: ctx,
	}
}

// NewAdminEnableBackupCodesV4ParamsWithHTTPClient creates a new AdminEnableBackupCodesV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminEnableBackupCodesV4ParamsWithHTTPClient(client *http.Client) *AdminEnableBackupCodesV4Params {
	var ()
	return &AdminEnableBackupCodesV4Params{
		HTTPClient: client,
	}
}

/*AdminEnableBackupCodesV4Params contains all the parameters to send to the API endpoint
for the admin enable backup codes v4 operation typically these are written to a http.Request
*/
type AdminEnableBackupCodesV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin enable backup codes v4 params
func (o *AdminEnableBackupCodesV4Params) WithTimeout(timeout time.Duration) *AdminEnableBackupCodesV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin enable backup codes v4 params
func (o *AdminEnableBackupCodesV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin enable backup codes v4 params
func (o *AdminEnableBackupCodesV4Params) WithContext(ctx context.Context) *AdminEnableBackupCodesV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin enable backup codes v4 params
func (o *AdminEnableBackupCodesV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin enable backup codes v4 params
func (o *AdminEnableBackupCodesV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin enable backup codes v4 params
func (o *AdminEnableBackupCodesV4Params) WithHTTPClient(client *http.Client) *AdminEnableBackupCodesV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin enable backup codes v4 params
func (o *AdminEnableBackupCodesV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin enable backup codes v4 params
func (o *AdminEnableBackupCodesV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminEnableBackupCodesV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *AdminEnableBackupCodesV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
