// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package account

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
)

// NewAdminAccountCreateParams creates a new AdminAccountCreateParams object
// with the default values initialized.
func NewAdminAccountCreateParams() *AdminAccountCreateParams {
	var ()
	return &AdminAccountCreateParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminAccountCreateParamsWithTimeout creates a new AdminAccountCreateParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminAccountCreateParamsWithTimeout(timeout time.Duration) *AdminAccountCreateParams {
	var ()
	return &AdminAccountCreateParams{

		timeout: timeout,
	}
}

// NewAdminAccountCreateParamsWithContext creates a new AdminAccountCreateParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminAccountCreateParamsWithContext(ctx context.Context) *AdminAccountCreateParams {
	var ()
	return &AdminAccountCreateParams{

		Context: ctx,
	}
}

// NewAdminAccountCreateParamsWithHTTPClient creates a new AdminAccountCreateParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminAccountCreateParamsWithHTTPClient(client *http.Client) *AdminAccountCreateParams {
	var ()
	return &AdminAccountCreateParams{
		HTTPClient: client,
	}
}

/*AdminAccountCreateParams contains all the parameters to send to the API endpoint
for the admin account create operation typically these are written to a http.Request
*/
type AdminAccountCreateParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *amsclientmodels.APIAccountCreateRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin account create params
func (o *AdminAccountCreateParams) WithTimeout(timeout time.Duration) *AdminAccountCreateParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin account create params
func (o *AdminAccountCreateParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin account create params
func (o *AdminAccountCreateParams) WithContext(ctx context.Context) *AdminAccountCreateParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin account create params
func (o *AdminAccountCreateParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin account create params
func (o *AdminAccountCreateParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin account create params
func (o *AdminAccountCreateParams) WithHTTPClient(client *http.Client) *AdminAccountCreateParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin account create params
func (o *AdminAccountCreateParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin account create params
func (o *AdminAccountCreateParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin account create params
func (o *AdminAccountCreateParams) WithBody(body *amsclientmodels.APIAccountCreateRequest) *AdminAccountCreateParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin account create params
func (o *AdminAccountCreateParams) SetBody(body *amsclientmodels.APIAccountCreateRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin account create params
func (o *AdminAccountCreateParams) WithNamespace(namespace string) *AdminAccountCreateParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin account create params
func (o *AdminAccountCreateParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminAccountCreateParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
