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

// NewAdminSendChatParams creates a new AdminSendChatParams object
// with the default values initialized.
func NewAdminSendChatParams() *AdminSendChatParams {
	var ()
	return &AdminSendChatParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminSendChatParamsWithTimeout creates a new AdminSendChatParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminSendChatParamsWithTimeout(timeout time.Duration) *AdminSendChatParams {
	var ()
	return &AdminSendChatParams{

		timeout: timeout,
	}
}

// NewAdminSendChatParamsWithContext creates a new AdminSendChatParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminSendChatParamsWithContext(ctx context.Context) *AdminSendChatParams {
	var ()
	return &AdminSendChatParams{

		Context: ctx,
	}
}

// NewAdminSendChatParamsWithHTTPClient creates a new AdminSendChatParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminSendChatParamsWithHTTPClient(client *http.Client) *AdminSendChatParams {
	var ()
	return &AdminSendChatParams{
		HTTPClient: client,
	}
}

/*AdminSendChatParams contains all the parameters to send to the API endpoint
for the admin send chat operation typically these are written to a http.Request
*/
type AdminSendChatParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *chatclientmodels.APISendChatParams
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Topic
	  topic ID that receive the chat

	*/
	Topic string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin send chat params
func (o *AdminSendChatParams) WithTimeout(timeout time.Duration) *AdminSendChatParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin send chat params
func (o *AdminSendChatParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin send chat params
func (o *AdminSendChatParams) WithContext(ctx context.Context) *AdminSendChatParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin send chat params
func (o *AdminSendChatParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin send chat params
func (o *AdminSendChatParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin send chat params
func (o *AdminSendChatParams) WithHTTPClient(client *http.Client) *AdminSendChatParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin send chat params
func (o *AdminSendChatParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin send chat params
func (o *AdminSendChatParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin send chat params
func (o *AdminSendChatParams) WithBody(body *chatclientmodels.APISendChatParams) *AdminSendChatParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin send chat params
func (o *AdminSendChatParams) SetBody(body *chatclientmodels.APISendChatParams) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin send chat params
func (o *AdminSendChatParams) WithNamespace(namespace string) *AdminSendChatParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin send chat params
func (o *AdminSendChatParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopic adds the topic to the admin send chat params
func (o *AdminSendChatParams) WithTopic(topic string) *AdminSendChatParams {
	o.SetTopic(topic)
	return o
}

// SetTopic adds the topic to the admin send chat params
func (o *AdminSendChatParams) SetTopic(topic string) {
	o.Topic = topic
}

// WriteToRequest writes these params to a swagger request
func (o *AdminSendChatParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param topic
	if err := r.SetPathParam("topic", o.Topic); err != nil {
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
