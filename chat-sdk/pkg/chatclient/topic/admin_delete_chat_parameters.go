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
)

// NewAdminDeleteChatParams creates a new AdminDeleteChatParams object
// with the default values initialized.
func NewAdminDeleteChatParams() *AdminDeleteChatParams {
	var ()
	return &AdminDeleteChatParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteChatParamsWithTimeout creates a new AdminDeleteChatParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteChatParamsWithTimeout(timeout time.Duration) *AdminDeleteChatParams {
	var ()
	return &AdminDeleteChatParams{

		timeout: timeout,
	}
}

// NewAdminDeleteChatParamsWithContext creates a new AdminDeleteChatParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteChatParamsWithContext(ctx context.Context) *AdminDeleteChatParams {
	var ()
	return &AdminDeleteChatParams{

		Context: ctx,
	}
}

// NewAdminDeleteChatParamsWithHTTPClient creates a new AdminDeleteChatParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteChatParamsWithHTTPClient(client *http.Client) *AdminDeleteChatParams {
	var ()
	return &AdminDeleteChatParams{
		HTTPClient: client,
	}
}

/*AdminDeleteChatParams contains all the parameters to send to the API endpoint
for the admin delete chat operation typically these are written to a http.Request
*/
type AdminDeleteChatParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ChatID
	  chat ID od the chat

	*/
	ChatID string
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Topic
	  topic ID of the chat

	*/
	Topic string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin delete chat params
func (o *AdminDeleteChatParams) WithTimeout(timeout time.Duration) *AdminDeleteChatParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete chat params
func (o *AdminDeleteChatParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete chat params
func (o *AdminDeleteChatParams) WithContext(ctx context.Context) *AdminDeleteChatParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete chat params
func (o *AdminDeleteChatParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete chat params
func (o *AdminDeleteChatParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete chat params
func (o *AdminDeleteChatParams) WithHTTPClient(client *http.Client) *AdminDeleteChatParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete chat params
func (o *AdminDeleteChatParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete chat params
func (o *AdminDeleteChatParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithChatID adds the chatID to the admin delete chat params
func (o *AdminDeleteChatParams) WithChatID(chatID string) *AdminDeleteChatParams {
	o.SetChatID(chatID)
	return o
}

// SetChatID adds the chatId to the admin delete chat params
func (o *AdminDeleteChatParams) SetChatID(chatID string) {
	o.ChatID = chatID
}

// WithNamespace adds the namespace to the admin delete chat params
func (o *AdminDeleteChatParams) WithNamespace(namespace string) *AdminDeleteChatParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete chat params
func (o *AdminDeleteChatParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopic adds the topic to the admin delete chat params
func (o *AdminDeleteChatParams) WithTopic(topic string) *AdminDeleteChatParams {
	o.SetTopic(topic)
	return o
}

// SetTopic adds the topic to the admin delete chat params
func (o *AdminDeleteChatParams) SetTopic(topic string) {
	o.Topic = topic
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteChatParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param chatId
	if err := r.SetPathParam("chatId", o.ChatID); err != nil {
		return err
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
