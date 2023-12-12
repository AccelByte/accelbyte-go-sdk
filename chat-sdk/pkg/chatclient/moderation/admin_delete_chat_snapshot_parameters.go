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

// NewAdminDeleteChatSnapshotParams creates a new AdminDeleteChatSnapshotParams object
// with the default values initialized.
func NewAdminDeleteChatSnapshotParams() *AdminDeleteChatSnapshotParams {
	var ()
	return &AdminDeleteChatSnapshotParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteChatSnapshotParamsWithTimeout creates a new AdminDeleteChatSnapshotParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteChatSnapshotParamsWithTimeout(timeout time.Duration) *AdminDeleteChatSnapshotParams {
	var ()
	return &AdminDeleteChatSnapshotParams{

		timeout: timeout,
	}
}

// NewAdminDeleteChatSnapshotParamsWithContext creates a new AdminDeleteChatSnapshotParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteChatSnapshotParamsWithContext(ctx context.Context) *AdminDeleteChatSnapshotParams {
	var ()
	return &AdminDeleteChatSnapshotParams{

		Context: ctx,
	}
}

// NewAdminDeleteChatSnapshotParamsWithHTTPClient creates a new AdminDeleteChatSnapshotParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteChatSnapshotParamsWithHTTPClient(client *http.Client) *AdminDeleteChatSnapshotParams {
	var ()
	return &AdminDeleteChatSnapshotParams{
		HTTPClient: client,
	}
}

/*AdminDeleteChatSnapshotParams contains all the parameters to send to the API endpoint
for the admin delete chat snapshot operation typically these are written to a http.Request
*/
type AdminDeleteChatSnapshotParams struct {

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

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin delete chat snapshot params
func (o *AdminDeleteChatSnapshotParams) WithTimeout(timeout time.Duration) *AdminDeleteChatSnapshotParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete chat snapshot params
func (o *AdminDeleteChatSnapshotParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete chat snapshot params
func (o *AdminDeleteChatSnapshotParams) WithContext(ctx context.Context) *AdminDeleteChatSnapshotParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete chat snapshot params
func (o *AdminDeleteChatSnapshotParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete chat snapshot params
func (o *AdminDeleteChatSnapshotParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete chat snapshot params
func (o *AdminDeleteChatSnapshotParams) WithHTTPClient(client *http.Client) *AdminDeleteChatSnapshotParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete chat snapshot params
func (o *AdminDeleteChatSnapshotParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete chat snapshot params
func (o *AdminDeleteChatSnapshotParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithChatID adds the chatID to the admin delete chat snapshot params
func (o *AdminDeleteChatSnapshotParams) WithChatID(chatID string) *AdminDeleteChatSnapshotParams {
	o.SetChatID(chatID)
	return o
}

// SetChatID adds the chatId to the admin delete chat snapshot params
func (o *AdminDeleteChatSnapshotParams) SetChatID(chatID string) {
	o.ChatID = chatID
}

// WithNamespace adds the namespace to the admin delete chat snapshot params
func (o *AdminDeleteChatSnapshotParams) WithNamespace(namespace string) *AdminDeleteChatSnapshotParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete chat snapshot params
func (o *AdminDeleteChatSnapshotParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteChatSnapshotParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
