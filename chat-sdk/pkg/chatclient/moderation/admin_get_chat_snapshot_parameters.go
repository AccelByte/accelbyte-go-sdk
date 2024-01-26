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

// NewAdminGetChatSnapshotParams creates a new AdminGetChatSnapshotParams object
// with the default values initialized.
func NewAdminGetChatSnapshotParams() *AdminGetChatSnapshotParams {
	var ()
	return &AdminGetChatSnapshotParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetChatSnapshotParamsWithTimeout creates a new AdminGetChatSnapshotParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetChatSnapshotParamsWithTimeout(timeout time.Duration) *AdminGetChatSnapshotParams {
	var ()
	return &AdminGetChatSnapshotParams{

		timeout: timeout,
	}
}

// NewAdminGetChatSnapshotParamsWithContext creates a new AdminGetChatSnapshotParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetChatSnapshotParamsWithContext(ctx context.Context) *AdminGetChatSnapshotParams {
	var ()
	return &AdminGetChatSnapshotParams{

		Context: ctx,
	}
}

// NewAdminGetChatSnapshotParamsWithHTTPClient creates a new AdminGetChatSnapshotParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetChatSnapshotParamsWithHTTPClient(client *http.Client) *AdminGetChatSnapshotParams {
	var ()
	return &AdminGetChatSnapshotParams{
		HTTPClient: client,
	}
}

/*AdminGetChatSnapshotParams contains all the parameters to send to the API endpoint
for the admin get chat snapshot operation typically these are written to a http.Request
*/
type AdminGetChatSnapshotParams struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get chat snapshot params
func (o *AdminGetChatSnapshotParams) WithTimeout(timeout time.Duration) *AdminGetChatSnapshotParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get chat snapshot params
func (o *AdminGetChatSnapshotParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get chat snapshot params
func (o *AdminGetChatSnapshotParams) WithContext(ctx context.Context) *AdminGetChatSnapshotParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get chat snapshot params
func (o *AdminGetChatSnapshotParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get chat snapshot params
func (o *AdminGetChatSnapshotParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get chat snapshot params
func (o *AdminGetChatSnapshotParams) WithHTTPClient(client *http.Client) *AdminGetChatSnapshotParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get chat snapshot params
func (o *AdminGetChatSnapshotParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get chat snapshot params
func (o *AdminGetChatSnapshotParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetChatSnapshotParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChatID adds the chatID to the admin get chat snapshot params
func (o *AdminGetChatSnapshotParams) WithChatID(chatID string) *AdminGetChatSnapshotParams {
	o.SetChatID(chatID)
	return o
}

// SetChatID adds the chatId to the admin get chat snapshot params
func (o *AdminGetChatSnapshotParams) SetChatID(chatID string) {
	o.ChatID = chatID
}

// WithNamespace adds the namespace to the admin get chat snapshot params
func (o *AdminGetChatSnapshotParams) WithNamespace(namespace string) *AdminGetChatSnapshotParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get chat snapshot params
func (o *AdminGetChatSnapshotParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetChatSnapshotParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
