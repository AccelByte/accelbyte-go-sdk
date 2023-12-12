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

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclientmodels"
)

// NewAdminUpdateInboxCategoryParams creates a new AdminUpdateInboxCategoryParams object
// with the default values initialized.
func NewAdminUpdateInboxCategoryParams() *AdminUpdateInboxCategoryParams {
	var ()
	return &AdminUpdateInboxCategoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateInboxCategoryParamsWithTimeout creates a new AdminUpdateInboxCategoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateInboxCategoryParamsWithTimeout(timeout time.Duration) *AdminUpdateInboxCategoryParams {
	var ()
	return &AdminUpdateInboxCategoryParams{

		timeout: timeout,
	}
}

// NewAdminUpdateInboxCategoryParamsWithContext creates a new AdminUpdateInboxCategoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateInboxCategoryParamsWithContext(ctx context.Context) *AdminUpdateInboxCategoryParams {
	var ()
	return &AdminUpdateInboxCategoryParams{

		Context: ctx,
	}
}

// NewAdminUpdateInboxCategoryParamsWithHTTPClient creates a new AdminUpdateInboxCategoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateInboxCategoryParamsWithHTTPClient(client *http.Client) *AdminUpdateInboxCategoryParams {
	var ()
	return &AdminUpdateInboxCategoryParams{
		HTTPClient: client,
	}
}

/*AdminUpdateInboxCategoryParams contains all the parameters to send to the API endpoint
for the admin update inbox category operation typically these are written to a http.Request
*/
type AdminUpdateInboxCategoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *chatclientmodels.ModelsUpdateInboxCategoryRequest
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

// WithTimeout adds the timeout to the admin update inbox category params
func (o *AdminUpdateInboxCategoryParams) WithTimeout(timeout time.Duration) *AdminUpdateInboxCategoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update inbox category params
func (o *AdminUpdateInboxCategoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update inbox category params
func (o *AdminUpdateInboxCategoryParams) WithContext(ctx context.Context) *AdminUpdateInboxCategoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update inbox category params
func (o *AdminUpdateInboxCategoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update inbox category params
func (o *AdminUpdateInboxCategoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update inbox category params
func (o *AdminUpdateInboxCategoryParams) WithHTTPClient(client *http.Client) *AdminUpdateInboxCategoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update inbox category params
func (o *AdminUpdateInboxCategoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update inbox category params
func (o *AdminUpdateInboxCategoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update inbox category params
func (o *AdminUpdateInboxCategoryParams) WithBody(body *chatclientmodels.ModelsUpdateInboxCategoryRequest) *AdminUpdateInboxCategoryParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update inbox category params
func (o *AdminUpdateInboxCategoryParams) SetBody(body *chatclientmodels.ModelsUpdateInboxCategoryRequest) {
	o.Body = body
}

// WithCategory adds the category to the admin update inbox category params
func (o *AdminUpdateInboxCategoryParams) WithCategory(category string) *AdminUpdateInboxCategoryParams {
	o.SetCategory(category)
	return o
}

// SetCategory adds the category to the admin update inbox category params
func (o *AdminUpdateInboxCategoryParams) SetCategory(category string) {
	o.Category = category
}

// WithNamespace adds the namespace to the admin update inbox category params
func (o *AdminUpdateInboxCategoryParams) WithNamespace(namespace string) *AdminUpdateInboxCategoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update inbox category params
func (o *AdminUpdateInboxCategoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateInboxCategoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
