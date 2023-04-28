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

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewAdminBanDeviceV4Params creates a new AdminBanDeviceV4Params object
// with the default values initialized.
func NewAdminBanDeviceV4Params() *AdminBanDeviceV4Params {
	var ()
	return &AdminBanDeviceV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminBanDeviceV4ParamsWithTimeout creates a new AdminBanDeviceV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminBanDeviceV4ParamsWithTimeout(timeout time.Duration) *AdminBanDeviceV4Params {
	var ()
	return &AdminBanDeviceV4Params{

		timeout: timeout,
	}
}

// NewAdminBanDeviceV4ParamsWithContext creates a new AdminBanDeviceV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminBanDeviceV4ParamsWithContext(ctx context.Context) *AdminBanDeviceV4Params {
	var ()
	return &AdminBanDeviceV4Params{

		Context: ctx,
	}
}

// NewAdminBanDeviceV4ParamsWithHTTPClient creates a new AdminBanDeviceV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminBanDeviceV4ParamsWithHTTPClient(client *http.Client) *AdminBanDeviceV4Params {
	var ()
	return &AdminBanDeviceV4Params{
		HTTPClient: client,
	}
}

/*AdminBanDeviceV4Params contains all the parameters to send to the API endpoint
for the admin ban device v4 operation typically these are written to a http.Request
*/
type AdminBanDeviceV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelDeviceBanRequestV4
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin ban device v4 params
func (o *AdminBanDeviceV4Params) WithTimeout(timeout time.Duration) *AdminBanDeviceV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin ban device v4 params
func (o *AdminBanDeviceV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin ban device v4 params
func (o *AdminBanDeviceV4Params) WithContext(ctx context.Context) *AdminBanDeviceV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin ban device v4 params
func (o *AdminBanDeviceV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin ban device v4 params
func (o *AdminBanDeviceV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin ban device v4 params
func (o *AdminBanDeviceV4Params) WithHTTPClient(client *http.Client) *AdminBanDeviceV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin ban device v4 params
func (o *AdminBanDeviceV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin ban device v4 params
func (o *AdminBanDeviceV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin ban device v4 params
func (o *AdminBanDeviceV4Params) WithBody(body *iamclientmodels.ModelDeviceBanRequestV4) *AdminBanDeviceV4Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin ban device v4 params
func (o *AdminBanDeviceV4Params) SetBody(body *iamclientmodels.ModelDeviceBanRequestV4) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin ban device v4 params
func (o *AdminBanDeviceV4Params) WithNamespace(namespace string) *AdminBanDeviceV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin ban device v4 params
func (o *AdminBanDeviceV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminBanDeviceV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
