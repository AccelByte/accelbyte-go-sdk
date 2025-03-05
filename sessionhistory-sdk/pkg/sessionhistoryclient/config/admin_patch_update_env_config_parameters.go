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

	"github.com/AccelByte/accelbyte-go-sdk/sessionhistory-sdk/pkg/sessionhistoryclientmodels"
)

// NewAdminPatchUpdateEnvConfigParams creates a new AdminPatchUpdateEnvConfigParams object
// with the default values initialized.
func NewAdminPatchUpdateEnvConfigParams() *AdminPatchUpdateEnvConfigParams {
	var ()
	return &AdminPatchUpdateEnvConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminPatchUpdateEnvConfigParamsWithTimeout creates a new AdminPatchUpdateEnvConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminPatchUpdateEnvConfigParamsWithTimeout(timeout time.Duration) *AdminPatchUpdateEnvConfigParams {
	var ()
	return &AdminPatchUpdateEnvConfigParams{

		timeout: timeout,
	}
}

// NewAdminPatchUpdateEnvConfigParamsWithContext creates a new AdminPatchUpdateEnvConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminPatchUpdateEnvConfigParamsWithContext(ctx context.Context) *AdminPatchUpdateEnvConfigParams {
	var ()
	return &AdminPatchUpdateEnvConfigParams{

		Context: ctx,
	}
}

// NewAdminPatchUpdateEnvConfigParamsWithHTTPClient creates a new AdminPatchUpdateEnvConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminPatchUpdateEnvConfigParamsWithHTTPClient(client *http.Client) *AdminPatchUpdateEnvConfigParams {
	var ()
	return &AdminPatchUpdateEnvConfigParams{
		HTTPClient: client,
	}
}

/*AdminPatchUpdateEnvConfigParams contains all the parameters to send to the API endpoint
for the admin patch update env config operation typically these are written to a http.Request
*/
type AdminPatchUpdateEnvConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionhistoryclientmodels.EnvconfigConfiguration

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin patch update env config params
func (o *AdminPatchUpdateEnvConfigParams) WithTimeout(timeout time.Duration) *AdminPatchUpdateEnvConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin patch update env config params
func (o *AdminPatchUpdateEnvConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin patch update env config params
func (o *AdminPatchUpdateEnvConfigParams) WithContext(ctx context.Context) *AdminPatchUpdateEnvConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin patch update env config params
func (o *AdminPatchUpdateEnvConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin patch update env config params
func (o *AdminPatchUpdateEnvConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin patch update env config params
func (o *AdminPatchUpdateEnvConfigParams) WithHTTPClient(client *http.Client) *AdminPatchUpdateEnvConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin patch update env config params
func (o *AdminPatchUpdateEnvConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin patch update env config params
func (o *AdminPatchUpdateEnvConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminPatchUpdateEnvConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin patch update env config params
func (o *AdminPatchUpdateEnvConfigParams) WithBody(body *sessionhistoryclientmodels.EnvconfigConfiguration) *AdminPatchUpdateEnvConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin patch update env config params
func (o *AdminPatchUpdateEnvConfigParams) SetBody(body *sessionhistoryclientmodels.EnvconfigConfiguration) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *AdminPatchUpdateEnvConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
