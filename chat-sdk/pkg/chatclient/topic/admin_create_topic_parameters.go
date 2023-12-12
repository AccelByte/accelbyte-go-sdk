// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package topic

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

// NewAdminCreateTopicParams creates a new AdminCreateTopicParams object
// with the default values initialized.
func NewAdminCreateTopicParams() *AdminCreateTopicParams {
	var ()
	return &AdminCreateTopicParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminCreateTopicParamsWithTimeout creates a new AdminCreateTopicParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminCreateTopicParamsWithTimeout(timeout time.Duration) *AdminCreateTopicParams {
	var ()
	return &AdminCreateTopicParams{

		timeout: timeout,
	}
}

// NewAdminCreateTopicParamsWithContext creates a new AdminCreateTopicParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminCreateTopicParamsWithContext(ctx context.Context) *AdminCreateTopicParams {
	var ()
	return &AdminCreateTopicParams{

		Context: ctx,
	}
}

// NewAdminCreateTopicParamsWithHTTPClient creates a new AdminCreateTopicParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminCreateTopicParamsWithHTTPClient(client *http.Client) *AdminCreateTopicParams {
	var ()
	return &AdminCreateTopicParams{
		HTTPClient: client,
	}
}

/*AdminCreateTopicParams contains all the parameters to send to the API endpoint
for the admin create topic operation typically these are written to a http.Request
*/
type AdminCreateTopicParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *chatclientmodels.APICreateTopicParams
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin create topic params
func (o *AdminCreateTopicParams) WithTimeout(timeout time.Duration) *AdminCreateTopicParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin create topic params
func (o *AdminCreateTopicParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin create topic params
func (o *AdminCreateTopicParams) WithContext(ctx context.Context) *AdminCreateTopicParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin create topic params
func (o *AdminCreateTopicParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin create topic params
func (o *AdminCreateTopicParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin create topic params
func (o *AdminCreateTopicParams) WithHTTPClient(client *http.Client) *AdminCreateTopicParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin create topic params
func (o *AdminCreateTopicParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin create topic params
func (o *AdminCreateTopicParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin create topic params
func (o *AdminCreateTopicParams) WithBody(body *chatclientmodels.APICreateTopicParams) *AdminCreateTopicParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin create topic params
func (o *AdminCreateTopicParams) SetBody(body *chatclientmodels.APICreateTopicParams) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin create topic params
func (o *AdminCreateTopicParams) WithNamespace(namespace string) *AdminCreateTopicParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin create topic params
func (o *AdminCreateTopicParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminCreateTopicParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
