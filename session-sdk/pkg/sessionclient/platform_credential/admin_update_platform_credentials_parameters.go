// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platform_credential

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

// NewAdminUpdatePlatformCredentialsParams creates a new AdminUpdatePlatformCredentialsParams object
// with the default values initialized.
func NewAdminUpdatePlatformCredentialsParams() *AdminUpdatePlatformCredentialsParams {
	var ()
	return &AdminUpdatePlatformCredentialsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdatePlatformCredentialsParamsWithTimeout creates a new AdminUpdatePlatformCredentialsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdatePlatformCredentialsParamsWithTimeout(timeout time.Duration) *AdminUpdatePlatformCredentialsParams {
	var ()
	return &AdminUpdatePlatformCredentialsParams{

		timeout: timeout,
	}
}

// NewAdminUpdatePlatformCredentialsParamsWithContext creates a new AdminUpdatePlatformCredentialsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdatePlatformCredentialsParamsWithContext(ctx context.Context) *AdminUpdatePlatformCredentialsParams {
	var ()
	return &AdminUpdatePlatformCredentialsParams{

		Context: ctx,
	}
}

// NewAdminUpdatePlatformCredentialsParamsWithHTTPClient creates a new AdminUpdatePlatformCredentialsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdatePlatformCredentialsParamsWithHTTPClient(client *http.Client) *AdminUpdatePlatformCredentialsParams {
	var ()
	return &AdminUpdatePlatformCredentialsParams{
		HTTPClient: client,
	}
}

/*AdminUpdatePlatformCredentialsParams contains all the parameters to send to the API endpoint
for the admin update platform credentials operation typically these are written to a http.Request
*/
type AdminUpdatePlatformCredentialsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionclientmodels.ApimodelsPutPlatformCredentialsRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin update platform credentials params
func (o *AdminUpdatePlatformCredentialsParams) WithTimeout(timeout time.Duration) *AdminUpdatePlatformCredentialsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update platform credentials params
func (o *AdminUpdatePlatformCredentialsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update platform credentials params
func (o *AdminUpdatePlatformCredentialsParams) WithContext(ctx context.Context) *AdminUpdatePlatformCredentialsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update platform credentials params
func (o *AdminUpdatePlatformCredentialsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update platform credentials params
func (o *AdminUpdatePlatformCredentialsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update platform credentials params
func (o *AdminUpdatePlatformCredentialsParams) WithHTTPClient(client *http.Client) *AdminUpdatePlatformCredentialsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update platform credentials params
func (o *AdminUpdatePlatformCredentialsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update platform credentials params
func (o *AdminUpdatePlatformCredentialsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update platform credentials params
func (o *AdminUpdatePlatformCredentialsParams) WithBody(body *sessionclientmodels.ApimodelsPutPlatformCredentialsRequest) *AdminUpdatePlatformCredentialsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update platform credentials params
func (o *AdminUpdatePlatformCredentialsParams) SetBody(body *sessionclientmodels.ApimodelsPutPlatformCredentialsRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin update platform credentials params
func (o *AdminUpdatePlatformCredentialsParams) WithNamespace(namespace string) *AdminUpdatePlatformCredentialsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update platform credentials params
func (o *AdminUpdatePlatformCredentialsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdatePlatformCredentialsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
