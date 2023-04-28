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
)

// NewRetrieveSSOLoginPlatformCredentialParams creates a new RetrieveSSOLoginPlatformCredentialParams object
// with the default values initialized.
func NewRetrieveSSOLoginPlatformCredentialParams() *RetrieveSSOLoginPlatformCredentialParams {
	var ()
	return &RetrieveSSOLoginPlatformCredentialParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveSSOLoginPlatformCredentialParamsWithTimeout creates a new RetrieveSSOLoginPlatformCredentialParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveSSOLoginPlatformCredentialParamsWithTimeout(timeout time.Duration) *RetrieveSSOLoginPlatformCredentialParams {
	var ()
	return &RetrieveSSOLoginPlatformCredentialParams{

		timeout: timeout,
	}
}

// NewRetrieveSSOLoginPlatformCredentialParamsWithContext creates a new RetrieveSSOLoginPlatformCredentialParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveSSOLoginPlatformCredentialParamsWithContext(ctx context.Context) *RetrieveSSOLoginPlatformCredentialParams {
	var ()
	return &RetrieveSSOLoginPlatformCredentialParams{

		Context: ctx,
	}
}

// NewRetrieveSSOLoginPlatformCredentialParamsWithHTTPClient creates a new RetrieveSSOLoginPlatformCredentialParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveSSOLoginPlatformCredentialParamsWithHTTPClient(client *http.Client) *RetrieveSSOLoginPlatformCredentialParams {
	var ()
	return &RetrieveSSOLoginPlatformCredentialParams{
		HTTPClient: client,
	}
}

/*RetrieveSSOLoginPlatformCredentialParams contains all the parameters to send to the API endpoint
for the retrieve sso login platform credential operation typically these are written to a http.Request
*/
type RetrieveSSOLoginPlatformCredentialParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the retrieve sso login platform credential params
func (o *RetrieveSSOLoginPlatformCredentialParams) WithTimeout(timeout time.Duration) *RetrieveSSOLoginPlatformCredentialParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve sso login platform credential params
func (o *RetrieveSSOLoginPlatformCredentialParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve sso login platform credential params
func (o *RetrieveSSOLoginPlatformCredentialParams) WithContext(ctx context.Context) *RetrieveSSOLoginPlatformCredentialParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve sso login platform credential params
func (o *RetrieveSSOLoginPlatformCredentialParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve sso login platform credential params
func (o *RetrieveSSOLoginPlatformCredentialParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve sso login platform credential params
func (o *RetrieveSSOLoginPlatformCredentialParams) WithHTTPClient(client *http.Client) *RetrieveSSOLoginPlatformCredentialParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve sso login platform credential params
func (o *RetrieveSSOLoginPlatformCredentialParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve sso login platform credential params
func (o *RetrieveSSOLoginPlatformCredentialParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the retrieve sso login platform credential params
func (o *RetrieveSSOLoginPlatformCredentialParams) WithNamespace(namespace string) *RetrieveSSOLoginPlatformCredentialParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve sso login platform credential params
func (o *RetrieveSSOLoginPlatformCredentialParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the retrieve sso login platform credential params
func (o *RetrieveSSOLoginPlatformCredentialParams) WithPlatformID(platformID string) *RetrieveSSOLoginPlatformCredentialParams {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the retrieve sso login platform credential params
func (o *RetrieveSSOLoginPlatformCredentialParams) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveSSOLoginPlatformCredentialParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
