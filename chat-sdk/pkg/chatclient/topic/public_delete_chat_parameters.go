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

// NewPublicDeleteChatParams creates a new PublicDeleteChatParams object
// with the default values initialized.
func NewPublicDeleteChatParams() *PublicDeleteChatParams {
	var ()
	return &PublicDeleteChatParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicDeleteChatParamsWithTimeout creates a new PublicDeleteChatParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicDeleteChatParamsWithTimeout(timeout time.Duration) *PublicDeleteChatParams {
	var ()
	return &PublicDeleteChatParams{

		timeout: timeout,
	}
}

// NewPublicDeleteChatParamsWithContext creates a new PublicDeleteChatParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicDeleteChatParamsWithContext(ctx context.Context) *PublicDeleteChatParams {
	var ()
	return &PublicDeleteChatParams{

		Context: ctx,
	}
}

// NewPublicDeleteChatParamsWithHTTPClient creates a new PublicDeleteChatParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicDeleteChatParamsWithHTTPClient(client *http.Client) *PublicDeleteChatParams {
	var ()
	return &PublicDeleteChatParams{
		HTTPClient: client,
	}
}

/*PublicDeleteChatParams contains all the parameters to send to the API endpoint
for the public delete chat operation typically these are written to a http.Request
*/
type PublicDeleteChatParams struct {

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

// WithTimeout adds the timeout to the public delete chat params
func (o *PublicDeleteChatParams) WithTimeout(timeout time.Duration) *PublicDeleteChatParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public delete chat params
func (o *PublicDeleteChatParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public delete chat params
func (o *PublicDeleteChatParams) WithContext(ctx context.Context) *PublicDeleteChatParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public delete chat params
func (o *PublicDeleteChatParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public delete chat params
func (o *PublicDeleteChatParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public delete chat params
func (o *PublicDeleteChatParams) WithHTTPClient(client *http.Client) *PublicDeleteChatParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public delete chat params
func (o *PublicDeleteChatParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public delete chat params
func (o *PublicDeleteChatParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithChatID adds the chatID to the public delete chat params
func (o *PublicDeleteChatParams) WithChatID(chatID string) *PublicDeleteChatParams {
	o.SetChatID(chatID)
	return o
}

// SetChatID adds the chatId to the public delete chat params
func (o *PublicDeleteChatParams) SetChatID(chatID string) {
	o.ChatID = chatID
}

// WithNamespace adds the namespace to the public delete chat params
func (o *PublicDeleteChatParams) WithNamespace(namespace string) *PublicDeleteChatParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public delete chat params
func (o *PublicDeleteChatParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopic adds the topic to the public delete chat params
func (o *PublicDeleteChatParams) WithTopic(topic string) *PublicDeleteChatParams {
	o.SetTopic(topic)
	return o
}

// SetTopic adds the topic to the public delete chat params
func (o *PublicDeleteChatParams) SetTopic(topic string) {
	o.Topic = topic
}

// WriteToRequest writes these params to a swagger request
func (o *PublicDeleteChatParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
