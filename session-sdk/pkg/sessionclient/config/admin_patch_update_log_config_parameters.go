// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package config

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

// NewAdminPatchUpdateLogConfigParams creates a new AdminPatchUpdateLogConfigParams object
// with the default values initialized.
func NewAdminPatchUpdateLogConfigParams() *AdminPatchUpdateLogConfigParams {
	var ()
	return &AdminPatchUpdateLogConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminPatchUpdateLogConfigParamsWithTimeout creates a new AdminPatchUpdateLogConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminPatchUpdateLogConfigParamsWithTimeout(timeout time.Duration) *AdminPatchUpdateLogConfigParams {
	var ()
	return &AdminPatchUpdateLogConfigParams{

		timeout: timeout,
	}
}

// NewAdminPatchUpdateLogConfigParamsWithContext creates a new AdminPatchUpdateLogConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminPatchUpdateLogConfigParamsWithContext(ctx context.Context) *AdminPatchUpdateLogConfigParams {
	var ()
	return &AdminPatchUpdateLogConfigParams{

		Context: ctx,
	}
}

// NewAdminPatchUpdateLogConfigParamsWithHTTPClient creates a new AdminPatchUpdateLogConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminPatchUpdateLogConfigParamsWithHTTPClient(client *http.Client) *AdminPatchUpdateLogConfigParams {
	var ()
	return &AdminPatchUpdateLogConfigParams{
		HTTPClient: client,
	}
}

/*AdminPatchUpdateLogConfigParams contains all the parameters to send to the API endpoint
for the admin patch update log config operation typically these are written to a http.Request
*/
type AdminPatchUpdateLogConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionclientmodels.LogconfigConfiguration

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin patch update log config params
func (o *AdminPatchUpdateLogConfigParams) WithTimeout(timeout time.Duration) *AdminPatchUpdateLogConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin patch update log config params
func (o *AdminPatchUpdateLogConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin patch update log config params
func (o *AdminPatchUpdateLogConfigParams) WithContext(ctx context.Context) *AdminPatchUpdateLogConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin patch update log config params
func (o *AdminPatchUpdateLogConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin patch update log config params
func (o *AdminPatchUpdateLogConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin patch update log config params
func (o *AdminPatchUpdateLogConfigParams) WithHTTPClient(client *http.Client) *AdminPatchUpdateLogConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin patch update log config params
func (o *AdminPatchUpdateLogConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin patch update log config params
func (o *AdminPatchUpdateLogConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminPatchUpdateLogConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin patch update log config params
func (o *AdminPatchUpdateLogConfigParams) WithBody(body *sessionclientmodels.LogconfigConfiguration) *AdminPatchUpdateLogConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin patch update log config params
func (o *AdminPatchUpdateLogConfigParams) SetBody(body *sessionclientmodels.LogconfigConfiguration) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *AdminPatchUpdateLogConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
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
