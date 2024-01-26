// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package moderation

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

// NewPublicGetChatSnapshotParams creates a new PublicGetChatSnapshotParams object
// with the default values initialized.
func NewPublicGetChatSnapshotParams() *PublicGetChatSnapshotParams {
	var ()
	return &PublicGetChatSnapshotParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetChatSnapshotParamsWithTimeout creates a new PublicGetChatSnapshotParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetChatSnapshotParamsWithTimeout(timeout time.Duration) *PublicGetChatSnapshotParams {
	var ()
	return &PublicGetChatSnapshotParams{

		timeout: timeout,
	}
}

// NewPublicGetChatSnapshotParamsWithContext creates a new PublicGetChatSnapshotParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetChatSnapshotParamsWithContext(ctx context.Context) *PublicGetChatSnapshotParams {
	var ()
	return &PublicGetChatSnapshotParams{

		Context: ctx,
	}
}

// NewPublicGetChatSnapshotParamsWithHTTPClient creates a new PublicGetChatSnapshotParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetChatSnapshotParamsWithHTTPClient(client *http.Client) *PublicGetChatSnapshotParams {
	var ()
	return &PublicGetChatSnapshotParams{
		HTTPClient: client,
	}
}

/*PublicGetChatSnapshotParams contains all the parameters to send to the API endpoint
for the public get chat snapshot operation typically these are written to a http.Request
*/
type PublicGetChatSnapshotParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ChatID
	  id of the chat

	*/
	ChatID string
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Topic
	  topic

	*/
	Topic string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get chat snapshot params
func (o *PublicGetChatSnapshotParams) WithTimeout(timeout time.Duration) *PublicGetChatSnapshotParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get chat snapshot params
func (o *PublicGetChatSnapshotParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get chat snapshot params
func (o *PublicGetChatSnapshotParams) WithContext(ctx context.Context) *PublicGetChatSnapshotParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get chat snapshot params
func (o *PublicGetChatSnapshotParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get chat snapshot params
func (o *PublicGetChatSnapshotParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get chat snapshot params
func (o *PublicGetChatSnapshotParams) WithHTTPClient(client *http.Client) *PublicGetChatSnapshotParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get chat snapshot params
func (o *PublicGetChatSnapshotParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get chat snapshot params
func (o *PublicGetChatSnapshotParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetChatSnapshotParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChatID adds the chatID to the public get chat snapshot params
func (o *PublicGetChatSnapshotParams) WithChatID(chatID string) *PublicGetChatSnapshotParams {
	o.SetChatID(chatID)
	return o
}

// SetChatID adds the chatId to the public get chat snapshot params
func (o *PublicGetChatSnapshotParams) SetChatID(chatID string) {
	o.ChatID = chatID
}

// WithNamespace adds the namespace to the public get chat snapshot params
func (o *PublicGetChatSnapshotParams) WithNamespace(namespace string) *PublicGetChatSnapshotParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get chat snapshot params
func (o *PublicGetChatSnapshotParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopic adds the topic to the public get chat snapshot params
func (o *PublicGetChatSnapshotParams) WithTopic(topic string) *PublicGetChatSnapshotParams {
	o.SetTopic(topic)
	return o
}

// SetTopic adds the topic to the public get chat snapshot params
func (o *PublicGetChatSnapshotParams) SetTopic(topic string) {
	o.Topic = topic
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetChatSnapshotParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
