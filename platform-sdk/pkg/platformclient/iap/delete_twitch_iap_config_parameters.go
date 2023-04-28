// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

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

// NewDeleteTwitchIAPConfigParams creates a new DeleteTwitchIAPConfigParams object
// with the default values initialized.
func NewDeleteTwitchIAPConfigParams() *DeleteTwitchIAPConfigParams {
	var ()
	return &DeleteTwitchIAPConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteTwitchIAPConfigParamsWithTimeout creates a new DeleteTwitchIAPConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteTwitchIAPConfigParamsWithTimeout(timeout time.Duration) *DeleteTwitchIAPConfigParams {
	var ()
	return &DeleteTwitchIAPConfigParams{

		timeout: timeout,
	}
}

// NewDeleteTwitchIAPConfigParamsWithContext creates a new DeleteTwitchIAPConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteTwitchIAPConfigParamsWithContext(ctx context.Context) *DeleteTwitchIAPConfigParams {
	var ()
	return &DeleteTwitchIAPConfigParams{

		Context: ctx,
	}
}

// NewDeleteTwitchIAPConfigParamsWithHTTPClient creates a new DeleteTwitchIAPConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteTwitchIAPConfigParamsWithHTTPClient(client *http.Client) *DeleteTwitchIAPConfigParams {
	var ()
	return &DeleteTwitchIAPConfigParams{
		HTTPClient: client,
	}
}

/*DeleteTwitchIAPConfigParams contains all the parameters to send to the API endpoint
for the delete twitch iap config operation typically these are written to a http.Request
*/
type DeleteTwitchIAPConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete twitch iap config params
func (o *DeleteTwitchIAPConfigParams) WithTimeout(timeout time.Duration) *DeleteTwitchIAPConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete twitch iap config params
func (o *DeleteTwitchIAPConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete twitch iap config params
func (o *DeleteTwitchIAPConfigParams) WithContext(ctx context.Context) *DeleteTwitchIAPConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete twitch iap config params
func (o *DeleteTwitchIAPConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete twitch iap config params
func (o *DeleteTwitchIAPConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete twitch iap config params
func (o *DeleteTwitchIAPConfigParams) WithHTTPClient(client *http.Client) *DeleteTwitchIAPConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete twitch iap config params
func (o *DeleteTwitchIAPConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete twitch iap config params
func (o *DeleteTwitchIAPConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete twitch iap config params
func (o *DeleteTwitchIAPConfigParams) WithNamespace(namespace string) *DeleteTwitchIAPConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete twitch iap config params
func (o *DeleteTwitchIAPConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteTwitchIAPConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
