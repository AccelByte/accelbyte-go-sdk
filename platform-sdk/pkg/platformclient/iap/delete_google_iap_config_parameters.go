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

// NewDeleteGoogleIAPConfigParams creates a new DeleteGoogleIAPConfigParams object
// with the default values initialized.
func NewDeleteGoogleIAPConfigParams() *DeleteGoogleIAPConfigParams {
	var ()
	return &DeleteGoogleIAPConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteGoogleIAPConfigParamsWithTimeout creates a new DeleteGoogleIAPConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteGoogleIAPConfigParamsWithTimeout(timeout time.Duration) *DeleteGoogleIAPConfigParams {
	var ()
	return &DeleteGoogleIAPConfigParams{

		timeout: timeout,
	}
}

// NewDeleteGoogleIAPConfigParamsWithContext creates a new DeleteGoogleIAPConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteGoogleIAPConfigParamsWithContext(ctx context.Context) *DeleteGoogleIAPConfigParams {
	var ()
	return &DeleteGoogleIAPConfigParams{

		Context: ctx,
	}
}

// NewDeleteGoogleIAPConfigParamsWithHTTPClient creates a new DeleteGoogleIAPConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteGoogleIAPConfigParamsWithHTTPClient(client *http.Client) *DeleteGoogleIAPConfigParams {
	var ()
	return &DeleteGoogleIAPConfigParams{
		HTTPClient: client,
	}
}

/*DeleteGoogleIAPConfigParams contains all the parameters to send to the API endpoint
for the delete google iap config operation typically these are written to a http.Request
*/
type DeleteGoogleIAPConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete google iap config params
func (o *DeleteGoogleIAPConfigParams) WithTimeout(timeout time.Duration) *DeleteGoogleIAPConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete google iap config params
func (o *DeleteGoogleIAPConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete google iap config params
func (o *DeleteGoogleIAPConfigParams) WithContext(ctx context.Context) *DeleteGoogleIAPConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete google iap config params
func (o *DeleteGoogleIAPConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete google iap config params
func (o *DeleteGoogleIAPConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete google iap config params
func (o *DeleteGoogleIAPConfigParams) WithHTTPClient(client *http.Client) *DeleteGoogleIAPConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete google iap config params
func (o *DeleteGoogleIAPConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete google iap config params
func (o *DeleteGoogleIAPConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete google iap config params
func (o *DeleteGoogleIAPConfigParams) WithNamespace(namespace string) *DeleteGoogleIAPConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete google iap config params
func (o *DeleteGoogleIAPConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteGoogleIAPConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
