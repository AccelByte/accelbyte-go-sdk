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

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewUpdateOculusIAPConfigParams creates a new UpdateOculusIAPConfigParams object
// with the default values initialized.
func NewUpdateOculusIAPConfigParams() *UpdateOculusIAPConfigParams {
	var ()
	return &UpdateOculusIAPConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateOculusIAPConfigParamsWithTimeout creates a new UpdateOculusIAPConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateOculusIAPConfigParamsWithTimeout(timeout time.Duration) *UpdateOculusIAPConfigParams {
	var ()
	return &UpdateOculusIAPConfigParams{

		timeout: timeout,
	}
}

// NewUpdateOculusIAPConfigParamsWithContext creates a new UpdateOculusIAPConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateOculusIAPConfigParamsWithContext(ctx context.Context) *UpdateOculusIAPConfigParams {
	var ()
	return &UpdateOculusIAPConfigParams{

		Context: ctx,
	}
}

// NewUpdateOculusIAPConfigParamsWithHTTPClient creates a new UpdateOculusIAPConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateOculusIAPConfigParamsWithHTTPClient(client *http.Client) *UpdateOculusIAPConfigParams {
	var ()
	return &UpdateOculusIAPConfigParams{
		HTTPClient: client,
	}
}

/*UpdateOculusIAPConfigParams contains all the parameters to send to the API endpoint
for the update oculus iap config operation typically these are written to a http.Request
*/
type UpdateOculusIAPConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.OculusIAPConfigRequest
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update oculus iap config params
func (o *UpdateOculusIAPConfigParams) WithTimeout(timeout time.Duration) *UpdateOculusIAPConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update oculus iap config params
func (o *UpdateOculusIAPConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update oculus iap config params
func (o *UpdateOculusIAPConfigParams) WithContext(ctx context.Context) *UpdateOculusIAPConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update oculus iap config params
func (o *UpdateOculusIAPConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update oculus iap config params
func (o *UpdateOculusIAPConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update oculus iap config params
func (o *UpdateOculusIAPConfigParams) WithHTTPClient(client *http.Client) *UpdateOculusIAPConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update oculus iap config params
func (o *UpdateOculusIAPConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update oculus iap config params
func (o *UpdateOculusIAPConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update oculus iap config params
func (o *UpdateOculusIAPConfigParams) WithBody(body *platformclientmodels.OculusIAPConfigRequest) *UpdateOculusIAPConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update oculus iap config params
func (o *UpdateOculusIAPConfigParams) SetBody(body *platformclientmodels.OculusIAPConfigRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update oculus iap config params
func (o *UpdateOculusIAPConfigParams) WithNamespace(namespace string) *UpdateOculusIAPConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update oculus iap config params
func (o *UpdateOculusIAPConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateOculusIAPConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
