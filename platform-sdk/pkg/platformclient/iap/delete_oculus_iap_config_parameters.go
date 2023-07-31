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

// NewDeleteOculusIAPConfigParams creates a new DeleteOculusIAPConfigParams object
// with the default values initialized.
func NewDeleteOculusIAPConfigParams() *DeleteOculusIAPConfigParams {
	var ()
	return &DeleteOculusIAPConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteOculusIAPConfigParamsWithTimeout creates a new DeleteOculusIAPConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteOculusIAPConfigParamsWithTimeout(timeout time.Duration) *DeleteOculusIAPConfigParams {
	var ()
	return &DeleteOculusIAPConfigParams{

		timeout: timeout,
	}
}

// NewDeleteOculusIAPConfigParamsWithContext creates a new DeleteOculusIAPConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteOculusIAPConfigParamsWithContext(ctx context.Context) *DeleteOculusIAPConfigParams {
	var ()
	return &DeleteOculusIAPConfigParams{

		Context: ctx,
	}
}

// NewDeleteOculusIAPConfigParamsWithHTTPClient creates a new DeleteOculusIAPConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteOculusIAPConfigParamsWithHTTPClient(client *http.Client) *DeleteOculusIAPConfigParams {
	var ()
	return &DeleteOculusIAPConfigParams{
		HTTPClient: client,
	}
}

/*DeleteOculusIAPConfigParams contains all the parameters to send to the API endpoint
for the delete oculus iap config operation typically these are written to a http.Request
*/
type DeleteOculusIAPConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete oculus iap config params
func (o *DeleteOculusIAPConfigParams) WithTimeout(timeout time.Duration) *DeleteOculusIAPConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete oculus iap config params
func (o *DeleteOculusIAPConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete oculus iap config params
func (o *DeleteOculusIAPConfigParams) WithContext(ctx context.Context) *DeleteOculusIAPConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete oculus iap config params
func (o *DeleteOculusIAPConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete oculus iap config params
func (o *DeleteOculusIAPConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete oculus iap config params
func (o *DeleteOculusIAPConfigParams) WithHTTPClient(client *http.Client) *DeleteOculusIAPConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete oculus iap config params
func (o *DeleteOculusIAPConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete oculus iap config params
func (o *DeleteOculusIAPConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete oculus iap config params
func (o *DeleteOculusIAPConfigParams) WithNamespace(namespace string) *DeleteOculusIAPConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete oculus iap config params
func (o *DeleteOculusIAPConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteOculusIAPConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
