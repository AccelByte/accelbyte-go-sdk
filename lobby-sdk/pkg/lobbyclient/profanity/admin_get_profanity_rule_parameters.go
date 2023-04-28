// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package profanity

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

// NewAdminGetProfanityRuleParams creates a new AdminGetProfanityRuleParams object
// with the default values initialized.
func NewAdminGetProfanityRuleParams() *AdminGetProfanityRuleParams {
	var ()
	return &AdminGetProfanityRuleParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetProfanityRuleParamsWithTimeout creates a new AdminGetProfanityRuleParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetProfanityRuleParamsWithTimeout(timeout time.Duration) *AdminGetProfanityRuleParams {
	var ()
	return &AdminGetProfanityRuleParams{

		timeout: timeout,
	}
}

// NewAdminGetProfanityRuleParamsWithContext creates a new AdminGetProfanityRuleParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetProfanityRuleParamsWithContext(ctx context.Context) *AdminGetProfanityRuleParams {
	var ()
	return &AdminGetProfanityRuleParams{

		Context: ctx,
	}
}

// NewAdminGetProfanityRuleParamsWithHTTPClient creates a new AdminGetProfanityRuleParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetProfanityRuleParamsWithHTTPClient(client *http.Client) *AdminGetProfanityRuleParams {
	var ()
	return &AdminGetProfanityRuleParams{
		HTTPClient: client,
	}
}

/*AdminGetProfanityRuleParams contains all the parameters to send to the API endpoint
for the admin get profanity rule operation typically these are written to a http.Request
*/
type AdminGetProfanityRuleParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get profanity rule params
func (o *AdminGetProfanityRuleParams) WithTimeout(timeout time.Duration) *AdminGetProfanityRuleParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get profanity rule params
func (o *AdminGetProfanityRuleParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get profanity rule params
func (o *AdminGetProfanityRuleParams) WithContext(ctx context.Context) *AdminGetProfanityRuleParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get profanity rule params
func (o *AdminGetProfanityRuleParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get profanity rule params
func (o *AdminGetProfanityRuleParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get profanity rule params
func (o *AdminGetProfanityRuleParams) WithHTTPClient(client *http.Client) *AdminGetProfanityRuleParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get profanity rule params
func (o *AdminGetProfanityRuleParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get profanity rule params
func (o *AdminGetProfanityRuleParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin get profanity rule params
func (o *AdminGetProfanityRuleParams) WithNamespace(namespace string) *AdminGetProfanityRuleParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get profanity rule params
func (o *AdminGetProfanityRuleParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetProfanityRuleParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
