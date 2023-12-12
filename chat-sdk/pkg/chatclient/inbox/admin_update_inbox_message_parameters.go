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

// NewAdminUpdateInboxMessageParams creates a new AdminUpdateInboxMessageParams object
// with the default values initialized.
func NewAdminUpdateInboxMessageParams() *AdminUpdateInboxMessageParams {
	var ()
	return &AdminUpdateInboxMessageParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateInboxMessageParamsWithTimeout creates a new AdminUpdateInboxMessageParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateInboxMessageParamsWithTimeout(timeout time.Duration) *AdminUpdateInboxMessageParams {
	var ()
	return &AdminUpdateInboxMessageParams{

		timeout: timeout,
	}
}

// NewAdminUpdateInboxMessageParamsWithContext creates a new AdminUpdateInboxMessageParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateInboxMessageParamsWithContext(ctx context.Context) *AdminUpdateInboxMessageParams {
	var ()
	return &AdminUpdateInboxMessageParams{

		Context: ctx,
	}
}

// NewAdminUpdateInboxMessageParamsWithHTTPClient creates a new AdminUpdateInboxMessageParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateInboxMessageParamsWithHTTPClient(client *http.Client) *AdminUpdateInboxMessageParams {
	var ()
	return &AdminUpdateInboxMessageParams{
		HTTPClient: client,
	}
}

/*AdminUpdateInboxMessageParams contains all the parameters to send to the API endpoint
for the admin update inbox message operation typically these are written to a http.Request
*/
type AdminUpdateInboxMessageParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *chatclientmodels.ModelsUpdateInboxMessageRequest
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
}

// WithTimeout adds the timeout to the admin update inbox message params
func (o *AdminUpdateInboxMessageParams) WithTimeout(timeout time.Duration) *AdminUpdateInboxMessageParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update inbox message params
func (o *AdminUpdateInboxMessageParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update inbox message params
func (o *AdminUpdateInboxMessageParams) WithContext(ctx context.Context) *AdminUpdateInboxMessageParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update inbox message params
func (o *AdminUpdateInboxMessageParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update inbox message params
func (o *AdminUpdateInboxMessageParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update inbox message params
func (o *AdminUpdateInboxMessageParams) WithHTTPClient(client *http.Client) *AdminUpdateInboxMessageParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update inbox message params
func (o *AdminUpdateInboxMessageParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update inbox message params
func (o *AdminUpdateInboxMessageParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update inbox message params
func (o *AdminUpdateInboxMessageParams) WithBody(body *chatclientmodels.ModelsUpdateInboxMessageRequest) *AdminUpdateInboxMessageParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update inbox message params
func (o *AdminUpdateInboxMessageParams) SetBody(body *chatclientmodels.ModelsUpdateInboxMessageRequest) {
	o.Body = body
}

// WithMessageID adds the messageID to the admin update inbox message params
func (o *AdminUpdateInboxMessageParams) WithMessageID(messageID string) *AdminUpdateInboxMessageParams {
	o.SetMessageID(messageID)
	return o
}

// SetMessageID adds the messageId to the admin update inbox message params
func (o *AdminUpdateInboxMessageParams) SetMessageID(messageID string) {
	o.MessageID = messageID
}

// WithNamespace adds the namespace to the admin update inbox message params
func (o *AdminUpdateInboxMessageParams) WithNamespace(namespace string) *AdminUpdateInboxMessageParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update inbox message params
func (o *AdminUpdateInboxMessageParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateInboxMessageParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
