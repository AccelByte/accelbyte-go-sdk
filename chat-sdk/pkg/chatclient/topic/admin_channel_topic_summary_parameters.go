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

// NewAdminChannelTopicSummaryParams creates a new AdminChannelTopicSummaryParams object
// with the default values initialized.
func NewAdminChannelTopicSummaryParams() *AdminChannelTopicSummaryParams {
	var ()
	return &AdminChannelTopicSummaryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminChannelTopicSummaryParamsWithTimeout creates a new AdminChannelTopicSummaryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminChannelTopicSummaryParamsWithTimeout(timeout time.Duration) *AdminChannelTopicSummaryParams {
	var ()
	return &AdminChannelTopicSummaryParams{

		timeout: timeout,
	}
}

// NewAdminChannelTopicSummaryParamsWithContext creates a new AdminChannelTopicSummaryParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminChannelTopicSummaryParamsWithContext(ctx context.Context) *AdminChannelTopicSummaryParams {
	var ()
	return &AdminChannelTopicSummaryParams{

		Context: ctx,
	}
}

// NewAdminChannelTopicSummaryParamsWithHTTPClient creates a new AdminChannelTopicSummaryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminChannelTopicSummaryParamsWithHTTPClient(client *http.Client) *AdminChannelTopicSummaryParams {
	var ()
	return &AdminChannelTopicSummaryParams{
		HTTPClient: client,
	}
}

/*AdminChannelTopicSummaryParams contains all the parameters to send to the API endpoint
for the admin channel topic summary operation typically these are written to a http.Request
*/
type AdminChannelTopicSummaryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin channel topic summary params
func (o *AdminChannelTopicSummaryParams) WithTimeout(timeout time.Duration) *AdminChannelTopicSummaryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin channel topic summary params
func (o *AdminChannelTopicSummaryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin channel topic summary params
func (o *AdminChannelTopicSummaryParams) WithContext(ctx context.Context) *AdminChannelTopicSummaryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin channel topic summary params
func (o *AdminChannelTopicSummaryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin channel topic summary params
func (o *AdminChannelTopicSummaryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin channel topic summary params
func (o *AdminChannelTopicSummaryParams) WithHTTPClient(client *http.Client) *AdminChannelTopicSummaryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin channel topic summary params
func (o *AdminChannelTopicSummaryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin channel topic summary params
func (o *AdminChannelTopicSummaryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin channel topic summary params
func (o *AdminChannelTopicSummaryParams) WithNamespace(namespace string) *AdminChannelTopicSummaryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin channel topic summary params
func (o *AdminChannelTopicSummaryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminChannelTopicSummaryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
