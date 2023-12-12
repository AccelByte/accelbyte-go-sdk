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

// NewAdminGetInboxStatsParams creates a new AdminGetInboxStatsParams object
// with the default values initialized.
func NewAdminGetInboxStatsParams() *AdminGetInboxStatsParams {
	var ()
	return &AdminGetInboxStatsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetInboxStatsParamsWithTimeout creates a new AdminGetInboxStatsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetInboxStatsParamsWithTimeout(timeout time.Duration) *AdminGetInboxStatsParams {
	var ()
	return &AdminGetInboxStatsParams{

		timeout: timeout,
	}
}

// NewAdminGetInboxStatsParamsWithContext creates a new AdminGetInboxStatsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetInboxStatsParamsWithContext(ctx context.Context) *AdminGetInboxStatsParams {
	var ()
	return &AdminGetInboxStatsParams{

		Context: ctx,
	}
}

// NewAdminGetInboxStatsParamsWithHTTPClient creates a new AdminGetInboxStatsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetInboxStatsParamsWithHTTPClient(client *http.Client) *AdminGetInboxStatsParams {
	var ()
	return &AdminGetInboxStatsParams{
		HTTPClient: client,
	}
}

/*AdminGetInboxStatsParams contains all the parameters to send to the API endpoint
for the admin get inbox stats operation typically these are written to a http.Request
*/
type AdminGetInboxStatsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*MessageID
	  message ids

	*/
	MessageID []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get inbox stats params
func (o *AdminGetInboxStatsParams) WithTimeout(timeout time.Duration) *AdminGetInboxStatsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get inbox stats params
func (o *AdminGetInboxStatsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get inbox stats params
func (o *AdminGetInboxStatsParams) WithContext(ctx context.Context) *AdminGetInboxStatsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get inbox stats params
func (o *AdminGetInboxStatsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get inbox stats params
func (o *AdminGetInboxStatsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get inbox stats params
func (o *AdminGetInboxStatsParams) WithHTTPClient(client *http.Client) *AdminGetInboxStatsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get inbox stats params
func (o *AdminGetInboxStatsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get inbox stats params
func (o *AdminGetInboxStatsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin get inbox stats params
func (o *AdminGetInboxStatsParams) WithNamespace(namespace string) *AdminGetInboxStatsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get inbox stats params
func (o *AdminGetInboxStatsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithMessageID adds the messageID to the admin get inbox stats params
func (o *AdminGetInboxStatsParams) WithMessageID(messageID []string) *AdminGetInboxStatsParams {
	o.SetMessageID(messageID)
	return o
}

// SetMessageID adds the messageId to the admin get inbox stats params
func (o *AdminGetInboxStatsParams) SetMessageID(messageID []string) {
	o.MessageID = messageID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetInboxStatsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	valuesMessageID := o.MessageID

	joinedMessageID := swag.JoinByFormat(valuesMessageID, "multi")
	// query array param messageId
	if err := r.SetQueryParam("messageId", joinedMessageID...); err != nil {
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
