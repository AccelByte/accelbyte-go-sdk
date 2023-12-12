// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package inbox

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

// NewAdminGetCategorySchemaParams creates a new AdminGetCategorySchemaParams object
// with the default values initialized.
func NewAdminGetCategorySchemaParams() *AdminGetCategorySchemaParams {
	var ()
	return &AdminGetCategorySchemaParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetCategorySchemaParamsWithTimeout creates a new AdminGetCategorySchemaParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetCategorySchemaParamsWithTimeout(timeout time.Duration) *AdminGetCategorySchemaParams {
	var ()
	return &AdminGetCategorySchemaParams{

		timeout: timeout,
	}
}

// NewAdminGetCategorySchemaParamsWithContext creates a new AdminGetCategorySchemaParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetCategorySchemaParamsWithContext(ctx context.Context) *AdminGetCategorySchemaParams {
	var ()
	return &AdminGetCategorySchemaParams{

		Context: ctx,
	}
}

// NewAdminGetCategorySchemaParamsWithHTTPClient creates a new AdminGetCategorySchemaParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetCategorySchemaParamsWithHTTPClient(client *http.Client) *AdminGetCategorySchemaParams {
	var ()
	return &AdminGetCategorySchemaParams{
		HTTPClient: client,
	}
}

/*AdminGetCategorySchemaParams contains all the parameters to send to the API endpoint
for the admin get category schema operation typically these are written to a http.Request
*/
type AdminGetCategorySchemaParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Category
	  category

	*/
	Category string
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get category schema params
func (o *AdminGetCategorySchemaParams) WithTimeout(timeout time.Duration) *AdminGetCategorySchemaParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get category schema params
func (o *AdminGetCategorySchemaParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get category schema params
func (o *AdminGetCategorySchemaParams) WithContext(ctx context.Context) *AdminGetCategorySchemaParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get category schema params
func (o *AdminGetCategorySchemaParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get category schema params
func (o *AdminGetCategorySchemaParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get category schema params
func (o *AdminGetCategorySchemaParams) WithHTTPClient(client *http.Client) *AdminGetCategorySchemaParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get category schema params
func (o *AdminGetCategorySchemaParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get category schema params
func (o *AdminGetCategorySchemaParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithCategory adds the category to the admin get category schema params
func (o *AdminGetCategorySchemaParams) WithCategory(category string) *AdminGetCategorySchemaParams {
	o.SetCategory(category)
	return o
}

// SetCategory adds the category to the admin get category schema params
func (o *AdminGetCategorySchemaParams) SetCategory(category string) {
	o.Category = category
}

// WithNamespace adds the namespace to the admin get category schema params
func (o *AdminGetCategorySchemaParams) WithNamespace(namespace string) *AdminGetCategorySchemaParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get category schema params
func (o *AdminGetCategorySchemaParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetCategorySchemaParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param category
	if err := r.SetPathParam("category", o.Category); err != nil {
		return err
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
