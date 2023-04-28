// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sso_credential

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

// NewUpdateSSOPlatformCredentialParams creates a new UpdateSSOPlatformCredentialParams object
// with the default values initialized.
func NewUpdateSSOPlatformCredentialParams() *UpdateSSOPlatformCredentialParams {
	var ()
	return &UpdateSSOPlatformCredentialParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateSSOPlatformCredentialParamsWithTimeout creates a new UpdateSSOPlatformCredentialParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateSSOPlatformCredentialParamsWithTimeout(timeout time.Duration) *UpdateSSOPlatformCredentialParams {
	var ()
	return &UpdateSSOPlatformCredentialParams{

		timeout: timeout,
	}
}

// NewUpdateSSOPlatformCredentialParamsWithContext creates a new UpdateSSOPlatformCredentialParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateSSOPlatformCredentialParamsWithContext(ctx context.Context) *UpdateSSOPlatformCredentialParams {
	var ()
	return &UpdateSSOPlatformCredentialParams{

		Context: ctx,
	}
}

// NewUpdateSSOPlatformCredentialParamsWithHTTPClient creates a new UpdateSSOPlatformCredentialParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateSSOPlatformCredentialParamsWithHTTPClient(client *http.Client) *UpdateSSOPlatformCredentialParams {
	var ()
	return &UpdateSSOPlatformCredentialParams{
		HTTPClient: client,
	}
}

/*UpdateSSOPlatformCredentialParams contains all the parameters to send to the API endpoint
for the update sso platform credential operation typically these are written to a http.Request
*/
type UpdateSSOPlatformCredentialParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelSSOPlatformCredentialRequest
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*PlatformID
	  Platform ID

	*/
	PlatformID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update sso platform credential params
func (o *UpdateSSOPlatformCredentialParams) WithTimeout(timeout time.Duration) *UpdateSSOPlatformCredentialParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update sso platform credential params
func (o *UpdateSSOPlatformCredentialParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update sso platform credential params
func (o *UpdateSSOPlatformCredentialParams) WithContext(ctx context.Context) *UpdateSSOPlatformCredentialParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update sso platform credential params
func (o *UpdateSSOPlatformCredentialParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update sso platform credential params
func (o *UpdateSSOPlatformCredentialParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update sso platform credential params
func (o *UpdateSSOPlatformCredentialParams) WithHTTPClient(client *http.Client) *UpdateSSOPlatformCredentialParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update sso platform credential params
func (o *UpdateSSOPlatformCredentialParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update sso platform credential params
func (o *UpdateSSOPlatformCredentialParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update sso platform credential params
func (o *UpdateSSOPlatformCredentialParams) WithBody(body *iamclientmodels.ModelSSOPlatformCredentialRequest) *UpdateSSOPlatformCredentialParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update sso platform credential params
func (o *UpdateSSOPlatformCredentialParams) SetBody(body *iamclientmodels.ModelSSOPlatformCredentialRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update sso platform credential params
func (o *UpdateSSOPlatformCredentialParams) WithNamespace(namespace string) *UpdateSSOPlatformCredentialParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update sso platform credential params
func (o *UpdateSSOPlatformCredentialParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the update sso platform credential params
func (o *UpdateSSOPlatformCredentialParams) WithPlatformID(platformID string) *UpdateSSOPlatformCredentialParams {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the update sso platform credential params
func (o *UpdateSSOPlatformCredentialParams) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateSSOPlatformCredentialParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
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
