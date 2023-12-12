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
	"github.com/go-openapi/swag"
)

// NewAdminDeleteInboxMessageParams creates a new AdminDeleteInboxMessageParams object
// with the default values initialized.
func NewAdminDeleteInboxMessageParams() *AdminDeleteInboxMessageParams {
	var ()
	return &AdminDeleteInboxMessageParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteInboxMessageParamsWithTimeout creates a new AdminDeleteInboxMessageParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteInboxMessageParamsWithTimeout(timeout time.Duration) *AdminDeleteInboxMessageParams {
	var ()
	return &AdminDeleteInboxMessageParams{

		timeout: timeout,
	}
}

// NewAdminDeleteInboxMessageParamsWithContext creates a new AdminDeleteInboxMessageParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteInboxMessageParamsWithContext(ctx context.Context) *AdminDeleteInboxMessageParams {
	var ()
	return &AdminDeleteInboxMessageParams{

		Context: ctx,
	}
}

// NewAdminDeleteInboxMessageParamsWithHTTPClient creates a new AdminDeleteInboxMessageParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteInboxMessageParamsWithHTTPClient(client *http.Client) *AdminDeleteInboxMessageParams {
	var ()
	return &AdminDeleteInboxMessageParams{
		HTTPClient: client,
	}
}

/*AdminDeleteInboxMessageParams contains all the parameters to send to the API endpoint
for the admin delete inbox message operation typically these are written to a http.Request
*/
type AdminDeleteInboxMessageParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*MessageID
	  message

	*/
	MessageID string
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Force
	  only for testing purposes, to force delete data

	*/
	Force *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin delete inbox message params
func (o *AdminDeleteInboxMessageParams) WithTimeout(timeout time.Duration) *AdminDeleteInboxMessageParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete inbox message params
func (o *AdminDeleteInboxMessageParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete inbox message params
func (o *AdminDeleteInboxMessageParams) WithContext(ctx context.Context) *AdminDeleteInboxMessageParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete inbox message params
func (o *AdminDeleteInboxMessageParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete inbox message params
func (o *AdminDeleteInboxMessageParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete inbox message params
func (o *AdminDeleteInboxMessageParams) WithHTTPClient(client *http.Client) *AdminDeleteInboxMessageParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete inbox message params
func (o *AdminDeleteInboxMessageParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete inbox message params
func (o *AdminDeleteInboxMessageParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithMessageID adds the messageID to the admin delete inbox message params
func (o *AdminDeleteInboxMessageParams) WithMessageID(messageID string) *AdminDeleteInboxMessageParams {
	o.SetMessageID(messageID)
	return o
}

// SetMessageID adds the messageId to the admin delete inbox message params
func (o *AdminDeleteInboxMessageParams) SetMessageID(messageID string) {
	o.MessageID = messageID
}

// WithNamespace adds the namespace to the admin delete inbox message params
func (o *AdminDeleteInboxMessageParams) WithNamespace(namespace string) *AdminDeleteInboxMessageParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete inbox message params
func (o *AdminDeleteInboxMessageParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithForce adds the force to the admin delete inbox message params
func (o *AdminDeleteInboxMessageParams) WithForce(force *bool) *AdminDeleteInboxMessageParams {
	o.SetForce(force)
	return o
}

// SetForce adds the force to the admin delete inbox message params
func (o *AdminDeleteInboxMessageParams) SetForce(force *bool) {
	o.Force = force
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteInboxMessageParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param messageId
	if err := r.SetPathParam("messageId", o.MessageID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Force != nil {

		// query param force
		var qrForce bool
		if o.Force != nil {
			qrForce = *o.Force
		}
		qForce := swag.FormatBool(qrForce)
		if qForce != "" {
			if err := r.SetQueryParam("force", qForce); err != nil {
				return err
			}
		}

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
