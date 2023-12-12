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

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclientmodels"
)

// NewAdminProfanityCreateBulkParams creates a new AdminProfanityCreateBulkParams object
// with the default values initialized.
func NewAdminProfanityCreateBulkParams() *AdminProfanityCreateBulkParams {
	var ()
	return &AdminProfanityCreateBulkParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminProfanityCreateBulkParamsWithTimeout creates a new AdminProfanityCreateBulkParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminProfanityCreateBulkParamsWithTimeout(timeout time.Duration) *AdminProfanityCreateBulkParams {
	var ()
	return &AdminProfanityCreateBulkParams{

		timeout: timeout,
	}
}

// NewAdminProfanityCreateBulkParamsWithContext creates a new AdminProfanityCreateBulkParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminProfanityCreateBulkParamsWithContext(ctx context.Context) *AdminProfanityCreateBulkParams {
	var ()
	return &AdminProfanityCreateBulkParams{

		Context: ctx,
	}
}

// NewAdminProfanityCreateBulkParamsWithHTTPClient creates a new AdminProfanityCreateBulkParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminProfanityCreateBulkParamsWithHTTPClient(client *http.Client) *AdminProfanityCreateBulkParams {
	var ()
	return &AdminProfanityCreateBulkParams{
		HTTPClient: client,
	}
}

/*AdminProfanityCreateBulkParams contains all the parameters to send to the API endpoint
for the admin profanity create bulk operation typically these are written to a http.Request
*/
type AdminProfanityCreateBulkParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *chatclientmodels.ModelsDictionaryInsertBulkRequest
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin profanity create bulk params
func (o *AdminProfanityCreateBulkParams) WithTimeout(timeout time.Duration) *AdminProfanityCreateBulkParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin profanity create bulk params
func (o *AdminProfanityCreateBulkParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin profanity create bulk params
func (o *AdminProfanityCreateBulkParams) WithContext(ctx context.Context) *AdminProfanityCreateBulkParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin profanity create bulk params
func (o *AdminProfanityCreateBulkParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin profanity create bulk params
func (o *AdminProfanityCreateBulkParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin profanity create bulk params
func (o *AdminProfanityCreateBulkParams) WithHTTPClient(client *http.Client) *AdminProfanityCreateBulkParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin profanity create bulk params
func (o *AdminProfanityCreateBulkParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin profanity create bulk params
func (o *AdminProfanityCreateBulkParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin profanity create bulk params
func (o *AdminProfanityCreateBulkParams) WithBody(body *chatclientmodels.ModelsDictionaryInsertBulkRequest) *AdminProfanityCreateBulkParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin profanity create bulk params
func (o *AdminProfanityCreateBulkParams) SetBody(body *chatclientmodels.ModelsDictionaryInsertBulkRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin profanity create bulk params
func (o *AdminProfanityCreateBulkParams) WithNamespace(namespace string) *AdminProfanityCreateBulkParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin profanity create bulk params
func (o *AdminProfanityCreateBulkParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminProfanityCreateBulkParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
