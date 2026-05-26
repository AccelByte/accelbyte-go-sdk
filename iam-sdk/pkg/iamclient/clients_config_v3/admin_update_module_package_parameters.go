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

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewAdminUpdateModulePackageParams creates a new AdminUpdateModulePackageParams object
// with the default values initialized.
func NewAdminUpdateModulePackageParams() *AdminUpdateModulePackageParams {
	var ()
	return &AdminUpdateModulePackageParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateModulePackageParamsWithTimeout creates a new AdminUpdateModulePackageParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateModulePackageParamsWithTimeout(timeout time.Duration) *AdminUpdateModulePackageParams {
	var ()
	return &AdminUpdateModulePackageParams{

		timeout: timeout,
	}
}

// NewAdminUpdateModulePackageParamsWithContext creates a new AdminUpdateModulePackageParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateModulePackageParamsWithContext(ctx context.Context) *AdminUpdateModulePackageParams {
	var ()
	return &AdminUpdateModulePackageParams{

		Context: ctx,
	}
}

// NewAdminUpdateModulePackageParamsWithHTTPClient creates a new AdminUpdateModulePackageParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateModulePackageParamsWithHTTPClient(client *http.Client) *AdminUpdateModulePackageParams {
	var ()
	return &AdminUpdateModulePackageParams{
		HTTPClient: client,
	}
}

/*AdminUpdateModulePackageParams contains all the parameters to send to the API endpoint
for the admin update module package operation typically these are written to a http.Request
*/
type AdminUpdateModulePackageParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ClientmodelUpsertPermissionModulePackageRequest

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin update module package params
func (o *AdminUpdateModulePackageParams) WithTimeout(timeout time.Duration) *AdminUpdateModulePackageParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update module package params
func (o *AdminUpdateModulePackageParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update module package params
func (o *AdminUpdateModulePackageParams) WithContext(ctx context.Context) *AdminUpdateModulePackageParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update module package params
func (o *AdminUpdateModulePackageParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update module package params
func (o *AdminUpdateModulePackageParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update module package params
func (o *AdminUpdateModulePackageParams) WithHTTPClient(client *http.Client) *AdminUpdateModulePackageParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update module package params
func (o *AdminUpdateModulePackageParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update module package params
func (o *AdminUpdateModulePackageParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUpdateModulePackageParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin update module package params
func (o *AdminUpdateModulePackageParams) WithBody(body *iamclientmodels.ClientmodelUpsertPermissionModulePackageRequest) *AdminUpdateModulePackageParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update module package params
func (o *AdminUpdateModulePackageParams) SetBody(body *iamclientmodels.ClientmodelUpsertPermissionModulePackageRequest) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateModulePackageParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
