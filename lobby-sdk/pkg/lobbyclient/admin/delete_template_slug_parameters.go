// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin

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

// NewDeleteTemplateSlugParams creates a new DeleteTemplateSlugParams object
// with the default values initialized.
func NewDeleteTemplateSlugParams() *DeleteTemplateSlugParams {
	var ()
	return &DeleteTemplateSlugParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteTemplateSlugParamsWithTimeout creates a new DeleteTemplateSlugParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteTemplateSlugParamsWithTimeout(timeout time.Duration) *DeleteTemplateSlugParams {
	var ()
	return &DeleteTemplateSlugParams{

		timeout: timeout,
	}
}

// NewDeleteTemplateSlugParamsWithContext creates a new DeleteTemplateSlugParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteTemplateSlugParamsWithContext(ctx context.Context) *DeleteTemplateSlugParams {
	var ()
	return &DeleteTemplateSlugParams{

		Context: ctx,
	}
}

// NewDeleteTemplateSlugParamsWithHTTPClient creates a new DeleteTemplateSlugParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteTemplateSlugParamsWithHTTPClient(client *http.Client) *DeleteTemplateSlugParams {
	var ()
	return &DeleteTemplateSlugParams{
		HTTPClient: client,
	}
}

/*DeleteTemplateSlugParams contains all the parameters to send to the API endpoint
for the delete template slug operation typically these are written to a http.Request
*/
type DeleteTemplateSlugParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*TemplateSlug
	  template slug

	*/
	TemplateSlug string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete template slug params
func (o *DeleteTemplateSlugParams) WithTimeout(timeout time.Duration) *DeleteTemplateSlugParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete template slug params
func (o *DeleteTemplateSlugParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete template slug params
func (o *DeleteTemplateSlugParams) WithContext(ctx context.Context) *DeleteTemplateSlugParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete template slug params
func (o *DeleteTemplateSlugParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete template slug params
func (o *DeleteTemplateSlugParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete template slug params
func (o *DeleteTemplateSlugParams) WithHTTPClient(client *http.Client) *DeleteTemplateSlugParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete template slug params
func (o *DeleteTemplateSlugParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete template slug params
func (o *DeleteTemplateSlugParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete template slug params
func (o *DeleteTemplateSlugParams) WithNamespace(namespace string) *DeleteTemplateSlugParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete template slug params
func (o *DeleteTemplateSlugParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTemplateSlug adds the templateSlug to the delete template slug params
func (o *DeleteTemplateSlugParams) WithTemplateSlug(templateSlug string) *DeleteTemplateSlugParams {
	o.SetTemplateSlug(templateSlug)
	return o
}

// SetTemplateSlug adds the templateSlug to the delete template slug params
func (o *DeleteTemplateSlugParams) SetTemplateSlug(templateSlug string) {
	o.TemplateSlug = templateSlug
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteTemplateSlugParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param templateSlug
	if err := r.SetPathParam("templateSlug", o.TemplateSlug); err != nil {
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
