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

// NewAdminProfanityCreateParams creates a new AdminProfanityCreateParams object
// with the default values initialized.
func NewAdminProfanityCreateParams() *AdminProfanityCreateParams {
	var ()
	return &AdminProfanityCreateParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminProfanityCreateParamsWithTimeout creates a new AdminProfanityCreateParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminProfanityCreateParamsWithTimeout(timeout time.Duration) *AdminProfanityCreateParams {
	var ()
	return &AdminProfanityCreateParams{

		timeout: timeout,
	}
}

// NewAdminProfanityCreateParamsWithContext creates a new AdminProfanityCreateParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminProfanityCreateParamsWithContext(ctx context.Context) *AdminProfanityCreateParams {
	var ()
	return &AdminProfanityCreateParams{

		Context: ctx,
	}
}

// NewAdminProfanityCreateParamsWithHTTPClient creates a new AdminProfanityCreateParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminProfanityCreateParamsWithHTTPClient(client *http.Client) *AdminProfanityCreateParams {
	var ()
	return &AdminProfanityCreateParams{
		HTTPClient: client,
	}
}

/*AdminProfanityCreateParams contains all the parameters to send to the API endpoint
for the admin profanity create operation typically these are written to a http.Request
*/
type AdminProfanityCreateParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *chatclientmodels.ModelsDictionaryInsertRequest
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin profanity create params
func (o *AdminProfanityCreateParams) WithTimeout(timeout time.Duration) *AdminProfanityCreateParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin profanity create params
func (o *AdminProfanityCreateParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin profanity create params
func (o *AdminProfanityCreateParams) WithContext(ctx context.Context) *AdminProfanityCreateParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin profanity create params
func (o *AdminProfanityCreateParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin profanity create params
func (o *AdminProfanityCreateParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin profanity create params
func (o *AdminProfanityCreateParams) WithHTTPClient(client *http.Client) *AdminProfanityCreateParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin profanity create params
func (o *AdminProfanityCreateParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin profanity create params
func (o *AdminProfanityCreateParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin profanity create params
func (o *AdminProfanityCreateParams) WithBody(body *chatclientmodels.ModelsDictionaryInsertRequest) *AdminProfanityCreateParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin profanity create params
func (o *AdminProfanityCreateParams) SetBody(body *chatclientmodels.ModelsDictionaryInsertRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin profanity create params
func (o *AdminProfanityCreateParams) WithNamespace(namespace string) *AdminProfanityCreateParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin profanity create params
func (o *AdminProfanityCreateParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminProfanityCreateParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
