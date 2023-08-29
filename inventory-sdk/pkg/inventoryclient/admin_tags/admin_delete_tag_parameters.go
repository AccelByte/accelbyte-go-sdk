// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_tags

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

// NewAdminDeleteTagParams creates a new AdminDeleteTagParams object
// with the default values initialized.
func NewAdminDeleteTagParams() *AdminDeleteTagParams {
	var ()
	return &AdminDeleteTagParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteTagParamsWithTimeout creates a new AdminDeleteTagParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteTagParamsWithTimeout(timeout time.Duration) *AdminDeleteTagParams {
	var ()
	return &AdminDeleteTagParams{

		timeout: timeout,
	}
}

// NewAdminDeleteTagParamsWithContext creates a new AdminDeleteTagParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteTagParamsWithContext(ctx context.Context) *AdminDeleteTagParams {
	var ()
	return &AdminDeleteTagParams{

		Context: ctx,
	}
}

// NewAdminDeleteTagParamsWithHTTPClient creates a new AdminDeleteTagParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteTagParamsWithHTTPClient(client *http.Client) *AdminDeleteTagParams {
	var ()
	return &AdminDeleteTagParams{
		HTTPClient: client,
	}
}

/*AdminDeleteTagParams contains all the parameters to send to the API endpoint
for the admin delete tag operation typically these are written to a http.Request
*/
type AdminDeleteTagParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*TagName
	  TagName

	*/
	TagName string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin delete tag params
func (o *AdminDeleteTagParams) WithTimeout(timeout time.Duration) *AdminDeleteTagParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete tag params
func (o *AdminDeleteTagParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete tag params
func (o *AdminDeleteTagParams) WithContext(ctx context.Context) *AdminDeleteTagParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete tag params
func (o *AdminDeleteTagParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete tag params
func (o *AdminDeleteTagParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete tag params
func (o *AdminDeleteTagParams) WithHTTPClient(client *http.Client) *AdminDeleteTagParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete tag params
func (o *AdminDeleteTagParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete tag params
func (o *AdminDeleteTagParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin delete tag params
func (o *AdminDeleteTagParams) WithNamespace(namespace string) *AdminDeleteTagParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete tag params
func (o *AdminDeleteTagParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTagName adds the tagName to the admin delete tag params
func (o *AdminDeleteTagParams) WithTagName(tagName string) *AdminDeleteTagParams {
	o.SetTagName(tagName)
	return o
}

// SetTagName adds the tagName to the admin delete tag params
func (o *AdminDeleteTagParams) SetTagName(tagName string) {
	o.TagName = tagName
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteTagParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param tagName
	if err := r.SetPathParam("tagName", o.TagName); err != nil {
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