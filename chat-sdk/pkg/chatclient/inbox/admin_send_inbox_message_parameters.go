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

// NewAdminSendInboxMessageParams creates a new AdminSendInboxMessageParams object
// with the default values initialized.
func NewAdminSendInboxMessageParams() *AdminSendInboxMessageParams {
	var ()
	return &AdminSendInboxMessageParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminSendInboxMessageParamsWithTimeout creates a new AdminSendInboxMessageParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminSendInboxMessageParamsWithTimeout(timeout time.Duration) *AdminSendInboxMessageParams {
	var ()
	return &AdminSendInboxMessageParams{

		timeout: timeout,
	}
}

// NewAdminSendInboxMessageParamsWithContext creates a new AdminSendInboxMessageParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminSendInboxMessageParamsWithContext(ctx context.Context) *AdminSendInboxMessageParams {
	var ()
	return &AdminSendInboxMessageParams{

		Context: ctx,
	}
}

// NewAdminSendInboxMessageParamsWithHTTPClient creates a new AdminSendInboxMessageParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminSendInboxMessageParamsWithHTTPClient(client *http.Client) *AdminSendInboxMessageParams {
	var ()
	return &AdminSendInboxMessageParams{
		HTTPClient: client,
	}
}

/*AdminSendInboxMessageParams contains all the parameters to send to the API endpoint
for the admin send inbox message operation typically these are written to a http.Request
*/
type AdminSendInboxMessageParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body chatclientmodels.ModelsSendInboxMessageRequest
	/*MessageID
	  message

	*/
	MessageID string
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

// WithTimeout adds the timeout to the admin send inbox message params
func (o *AdminSendInboxMessageParams) WithTimeout(timeout time.Duration) *AdminSendInboxMessageParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin send inbox message params
func (o *AdminSendInboxMessageParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin send inbox message params
func (o *AdminSendInboxMessageParams) WithContext(ctx context.Context) *AdminSendInboxMessageParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin send inbox message params
func (o *AdminSendInboxMessageParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin send inbox message params
func (o *AdminSendInboxMessageParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin send inbox message params
func (o *AdminSendInboxMessageParams) WithHTTPClient(client *http.Client) *AdminSendInboxMessageParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin send inbox message params
func (o *AdminSendInboxMessageParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin send inbox message params
func (o *AdminSendInboxMessageParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminSendInboxMessageParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin send inbox message params
func (o *AdminSendInboxMessageParams) WithBody(body *chatclientmodels.ModelsSendInboxMessageRequest) *AdminSendInboxMessageParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin send inbox message params
func (o *AdminSendInboxMessageParams) SetBody(body *chatclientmodels.ModelsSendInboxMessageRequest) {
	o.Body = body
}

// WithMessageID adds the messageID to the admin send inbox message params
func (o *AdminSendInboxMessageParams) WithMessageID(messageID string) *AdminSendInboxMessageParams {
	o.SetMessageID(messageID)
	return o
}

// SetMessageID adds the messageId to the admin send inbox message params
func (o *AdminSendInboxMessageParams) SetMessageID(messageID string) {
	o.MessageID = messageID
}

// WithNamespace adds the namespace to the admin send inbox message params
func (o *AdminSendInboxMessageParams) WithNamespace(namespace string) *AdminSendInboxMessageParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin send inbox message params
func (o *AdminSendInboxMessageParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminSendInboxMessageParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param messageId
	if err := r.SetPathParam("messageId", o.MessageID); err != nil {
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
